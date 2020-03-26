Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3532193D57
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 11:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cbNcIgtJttOKU7sy2KhYNgVdYTi3Kj5IGVABQF+HKqI=; b=GtApUd4FUGAz0MsmD3Orkz8OJ
	6D7ffH2H+hUJTeqLCzYWmiLcoSA+rczlEJA0ukDhnR9e5lBLB42fhEplCVaB+W4d8lZFpnYvC51e/
	7oL7SNjo4YLxfNJn0i0n54NoeSC78Kas9yukz4EuzSc/SIGUIdJ3wXlub7MCz/b3rjCmw1sulsYmh
	HjCPrKD1hGOizTzK9a4gV7uZdlVX+3MRlTsMqUhY3DSuElVQqTcSuNaQDJ9FAnJDeXjWm+Xbb5QFW
	JxsPgOXCjSovZPprUxwGj4PM+DUefmdtI93P9i4Vtxch6vo4ODueIsKaKa5VJr8HbuJtI34tv4Mfo
	XM9EWB81w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQ9o-0001UV-Ku; Thu, 26 Mar 2020 10:54:40 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQ9e-0001Tp-LW
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 10:54:32 +0000
Received: from mslow2.mail.gandi.net ([217.70.178.242])
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <mail@aparcar.org>) id 1jHQ9c-0006Dd-77
 for openwrt-devel@openwrt.org; Thu, 26 Mar 2020 06:54:28 -0400
Received: from relay1-d.mail.gandi.net (unknown [217.70.183.193])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id A955B3A5506
 for <openwrt-devel@openwrt.org>; Thu, 26 Mar 2020 08:38:53 +0000 (UTC)
X-Originating-IP: 72.234.241.177
Received: from [192.168.22.124] (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 897AF240002;
 Thu, 26 Mar 2020 08:38:30 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <CAPS4iO+trOBtk-wRV5SxoZYkGSNuwR0jUPiUjmnHUC-VhPS4tQ@mail.gmail.com>
 <0e1eddc8-e991-720c-92f8-c3acb825596a@hauke-m.de>
 <76956cda-c3bd-4ceb-a729-1d7a634da8ce@localhost>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <46f1a780-31b0-57bd-8a59-698a5dbd03c7@aparcar.org>
Date: Wed, 25 Mar 2020 22:38:28 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <76956cda-c3bd-4ceb-a729-1d7a634da8ce@localhost>
Content-Language: en-US
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Hi team, I hope everyone is fine & healthy and can use the
 time in quarantine to finally review those important patches I sent! >> Based
 on recent events regarding COVID-19 the Battlemesh and the OpenWrt >>
 developer
 meeting will not take place in May this year. > it's really nice and necessary
 to meet in person, but I would l [...] 
 Content analysis details:   (-0.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jit.si]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [217.70.178.242 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_035430_856021_0D537232 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [46.101.232.90 listed in wl.mailspike.net]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] OpenWrt developer meeting at Battlemesh and
 COVID-19
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi team,

I hope everyone is fine & healthy and can use the time in quarantine to 
finally review those important patches I sent!

>> Based on recent events regarding COVID-19 the Battlemesh and the OpenWrt
>> developer meeting will not take place in May this year.
> it's really nice and necessary to meet in person, but I would like to (ab)use the current situation and find out, if it would be possible to hold remote meetings as well. That way we could meet in person every ~12 months, possibly having remote meetings in between, thus achieving the 6 months cadence we've talked about on the last IRL meeting.
>
> One or two weekend days would probably work for most of us (based on the recent votes).
>
> I don't have any prior experience with such meetings, but I assume it's going to be quite common format in the upcoming days, so we might look around and steal the best parts from the other FOSS projects.

My current classes are taught via meet.google.com and zoom.us, both 
cases works fine with about 20 members per session. For other "meetings" 
I used meet.jit.si which works fine too, however not tried at a bigger 
scale.

Do you plan to invite non-core-developers (like me) again or only the 
core clique? If I remember the meeting in Hamburg correct we also wanted 
to invite package maintainers to have a bigger crowed discussing about 
OpenWrts future.

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
