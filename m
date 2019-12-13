Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E143211EDFA
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 23:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbEcgvI+lIVsUGLyc9dDP5q1+n4oJ/m4LfEK6UDUOdk=; b=sZbgscmJtOHAeO
	WPwRfUIGXCrTvmn+0ehtcSlMOptRC+5W54HLQJ9yklko0MOtkkarwSfGj6CjToAcBgWtLPbznS3PT
	bQnfztD6SIOCNj/qvW49VFISmCO7PjBTrX+OFGKybRY+gPPlqKGRKHLGcvc8nPTdvkY7v5p24S3kO
	jrq5kcrjVGH1fHx+P1vrrsGA3KIqP7NdC/C0gt/lIYWMyIFyDAIDfqPLXwsKkkJw7J6NcpJSWGRXu
	hbbvagWUxF7vI9Sljk3ADsa1q6SA91zHlffV/qVACHHGoTy7CH20XbWNwcC3tOcvyj/uLEtat99gJ
	mrTfwfhh28va7O2QbuSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifthl-0005ao-NT; Fri, 13 Dec 2019 22:46:37 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifthd-0005aB-MD
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 22:46:31 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1ifthX-0007zv-0m; Fri, 13 Dec 2019 23:46:23 +0100
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>)
 id 1ifthW-0006wQ-KO; Fri, 13 Dec 2019 23:46:22 +0100
From: Sven Roederer <devel-sven@geroedel.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Date: Fri, 13 Dec 2019 23:46:22 +0100
Message-ID: <2161512.f3matcrDuR@strike>
In-Reply-To: <01c401d5b1f2$ded6d1c0$9c847540$@adrianschmutzler.de>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
 <01c401d5b1f2$ded6d1c0$9c847540$@adrianschmutzler.de>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Adrian, it's just that I've this patch around for some time, 
 as I use this device on 19.07. So just sharing this patch ... Sven 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_144629_873270_17033E9C 
X-CRM114-Status: UNSURE (   1.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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
Cc: 'Luochongjun' <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian,

it's just that I've this patch around for some time, as I use this device on 
19.07. So just sharing this patch ...

Sven

Am Freitag, 13. Dezember 2019, 21:21:14 CET schrieb Adrian Schmutzler:
> Hi Sven,
> 
> so, the primary question remains unanswered: Why should exactly this device
> be backported (out of the big set of devices only in master)?
> 




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
