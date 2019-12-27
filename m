Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A5D12BB26
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 21:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pWOw84uHRTCI/4gi+Yzv72C2fHMzgjno4FpKgJ1FoOw=; b=hg59WC1LkrrQw9
	M9sVDd4/8GHDf6eX3cONqdyLR9se1FWvk/HR1IeE6NKO/jFGGmQBthsJqSoAYys5H7CkkTMTc5ZpK
	mI9z7BO2wJ3diGqKXbXjlPNBEmI+tBNriiIgq+1tVa/5YLdkBJS2KuM6J4GeBQJLCl2uXY3/EjA4R
	B1QYLMiSU9fGntr83SmCKIvdZWYessryniSgURWOSTwWdvaAgtGGf6tK+QzUYC9GMhm0swww6SY7x
	XdRfViOMwbmquOdPcnq2xx7/0S/IAlcfFWUNslLf5yMeaMu78Pew8iA0FdyhYOgD1jER/wW7MCvZr
	9blDzEjmCaImvbFikxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikwRB-0006gl-Ac; Fri, 27 Dec 2019 20:42:21 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikwR4-0006gH-Nl
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 20:42:16 +0000
Received: from localhost ([127.0.0.1] helo=www.geroedel.de)
 by dazzle.geroedel.de with esmtp (Exim 4.89)
 (envelope-from <devel-sven@geroedel.de>) id 1ikwQz-0006zV-HJ
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 21:42:09 +0100
MIME-Version: 1.0
Date: Fri, 27 Dec 2019 21:42:09 +0100
From: devel-sven@geroedel.de
To: openwrt-devel@lists.openwrt.org
Message-ID: <39ac86a1c93b970341364da9b19dbb7d@geroedel.de>
X-Sender: devel-sven@geroedel.de
User-Agent: Roundcube Webmail/1.2.3
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details. Content preview:  Hi,
 can anyone cherry-pick b81cee86e63d4421072839ec8a3780d8afff9337
 to 19.07 ? Thanks, Sven 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 127.0.0.1
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-SA-Exim-Scanned: No (on dazzle.geroedel.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_124214_919131_ED1D28D9 
X-CRM114-Status: UNSURE (  -3.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [19.07] backport "build: have scripts/feeds honor
 all toplevel .mk-files of a feed"
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

can anyone cherry-pick b81cee86e63d4421072839ec8a3780d8afff9337 to 19.07 
?


Thanks, Sven

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
