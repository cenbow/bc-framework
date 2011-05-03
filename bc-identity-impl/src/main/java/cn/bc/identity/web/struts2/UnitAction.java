/**
 * 
 */
package cn.bc.identity.web.struts2;

import java.util.List;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.bc.core.query.condition.Condition;
import cn.bc.core.query.condition.Direction;
import cn.bc.core.query.condition.impl.AndCondition;
import cn.bc.core.query.condition.impl.EqualsCondition;
import cn.bc.core.query.condition.impl.OrderCondition;
import cn.bc.identity.domain.Actor;
import cn.bc.web.ui.html.grid.Grid;
import cn.bc.web.ui.html.grid.TextColumn;
import cn.bc.web.ui.html.page.Option;

/**
 * 单位Action
 * 
 * @author dragon
 * 
 */
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@Controller("unitAction")
public class UnitAction extends AbstractActorAction {
	private static final long serialVersionUID = 1L;

	@Override
	protected String getEntityConfigName() {
		return "Unit";
	}

	protected Grid buildGrid(List<Actor> entities) {
		return super
				.buildGrid(entities)
				.addColumn(
						new TextColumn("status", getText("actor.status"), 40))
				.addColumn(new TextColumn("code", getText("actor.code"), 80))
				.addColumn(new TextColumn("name", getText("actor.name")))
				.addColumn(new TextColumn("phone", getText("actor.phone"), 120))
				.addColumn(new TextColumn("email", getText("actor.email"), 150));
	}

	protected Option buildListPageOption() {
		return super.buildListPageOption().setWidth(650).setMinWidth(500)
				.setMinHeight(300);
	}

	public String list() throws Exception {
		Condition condition = new AndCondition().add(
				new EqualsCondition("type", new Integer(Actor.TYPE_UNIT))).add(
				new OrderCondition("code", Direction.Asc));
		this.setEntities(this.getCrudService().createQuery()
				.condition(condition).list());
		this.setPage(buildListPage(this.getEntities()));
		return "list";
	}
}
