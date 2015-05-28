package com.programmingfree.springservice;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.boot.actuate.metrics.CounterService;
import org.springframework.stereotype.Component;

@Component
public class SystemHealth implements HealthIndicator {

	@Autowired
	private CounterService counterService;

	@Override
	public Health health() {
		counterService.increment("counter.health");

		Random r = new Random();
		if ( r.nextBoolean() ) {
			return Health.status("code").down().withDetail("Error Code", 10).build();
		}
		return Health.status("code").up().build();
	}
}
