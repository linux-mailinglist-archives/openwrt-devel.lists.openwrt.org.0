Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC621855FB
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Mar 2020 17:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMmLI8nRi2IUHayIkVzcf/yTvqHLg62yeNseUmA9vPs=; b=PEf+ieybDhi8Zb
	wHvzoCabQZtYdfs7aMBLwBWLibnyEQ9GDAVThaN6PX4OyRZoVubGpYcXD0DFP7xL8F6f0fbsNlpmb
	nwlDPCNH7C49IfQw10TYBrAj3HtgCDFlU4q+HJmToiYiG/1VqB/zQktvMBiHRCUgjVc8mehxftOl/
	MP2ZvfZ+IsaXobKYY1nNCCUjIADADjdGC+vd2Rick3WpO6Yjxumu9Q7WUkYK4npMo115PREGDAsXk
	3Y+gQP/wjTTRUxfCFDNsAePjB0wiHhQ98rPcCgeFNKs9kPBjC7Dg9L7gT2dd4/5TozcAfMrZN3BPK
	PB04+Aj2wOsqlMpSxANA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD9Rd-0004c9-Tf; Sat, 14 Mar 2020 16:15:25 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD9RV-0004bj-SR
 for openwrt-devel@lists.openwrt.org; Sat, 14 Mar 2020 16:15:19 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <ynezz@true.cz>) id 1jD9RR-0002Mn-Ie
 for openwrt-devel@openwrt.org; Sat, 14 Mar 2020 12:15:13 -0400
Received: from [127.0.0.1] (ip-37-188-172-197.eurotel.cz [37.188.172.197])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 752A34053;
 Sat, 14 Mar 2020 16:58:49 +0100 (CET)
Date: Sat, 14 Mar 2020 15:58:48 +0000 (UTC)
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <76956cda-c3bd-4ceb-a729-1d7a634da8ce@localhost>
In-Reply-To: <0e1eddc8-e991-720c-92f8-c3acb825596a@hauke-m.de>
References: <CAPS4iO+trOBtk-wRV5SxoZYkGSNuwR0jUPiUjmnHUC-VhPS4tQ@mail.gmail.com>
 <0e1eddc8-e991-720c-92f8-c3acb825596a@hauke-m.de>
MIME-Version: 1.0
X-Correlation-ID: <76956cda-c3bd-4ceb-a729-1d7a634da8ce@localhost>
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Mar 14, 2020 12:50:02 Hauke Mehrtens <hauke@hauke-m.de>: Hi, 
 > Based on recent events regarding COVID-19 the Battlemesh and the OpenWrt
 > developer meeting will not take place in May this year. 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hauke-m.de]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_091518_070364_2A2487EA 
X-CRM114-Status: UNSURE (   2.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Mar 14, 2020 12:50:02 Hauke Mehrtens <hauke@hauke-m.de>:

Hi,

> Based on recent events regarding COVID-19 the Battlemesh and the OpenWrt
> developer meeting will not take place in May this year.

it's really nice and necessary to meet in person, but I would like to (ab)use the current situation and find out, if it would be possible to hold remote meetings as well. That way we could meet in person every ~12 months, possibly having remote meetings in between, thus achieving the 6 months cadence we've talked about on the last IRL meeting.

One or two weekend days would probably work for most of us (based on the recent votes).

I don't have any prior experience with such meetings, but I assume it's going to be quite common format in the upcoming days, so we might look around and steal the best parts from the other FOSS projects.

Have a nice weekend!

Petr


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
