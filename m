Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F66F9501
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 17:01:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adBljAnetyGrGIQT45eHcCCGX2tdlTmxzgjrEIqh7Cw=; b=myRrSoFeKmsQXw
	xSZqmjpWOnOl6jkA4R45AnOsSGGXnLag2fZ7nJFQzb8Uoubeaz9xcih2ldFN6BBehJ925j4jxOBlC
	OQyNpP3zXD1RCJTd/htct7GHmkXtkY8hfJyseiJ9myXwqOLSFm/xY+nDQor93WPuvbAEgOUE/8yIf
	njsOuEA6WsZsW3u2ADXO8O7rg7qpnJI1Y8f37LNDpwN45wzhKYJR973KxcwsPpwa+E0GmBvWsBWWE
	TWJuY3pTBu1D2N283kzo8rry1ESrGD2ko6nRUPAXQdkvwSi+lWT/+t4DZpE9yLkj0nN8GP/8YEDa8
	0YIu5CcbGDqMen/Pms9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYbo-0000Bc-B9; Tue, 12 Nov 2019 16:01:36 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYaY-00076r-Ud
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 16:00:21 +0000
Received: (wp-smtpd smtp.wp.pl 27883 invoked from network);
 12 Nov 2019 17:00:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1573574414; bh=bRZ/eMdJ/MIG6qWwzQOQPFiNQFUI3uAgKk7nuZZRKYY=;
 h=From:To:Cc:Subject;
 b=B/RtpfJPpUi5oLVa0jSpsBmVpi+Zg5BMGfJqsBg1sxHIUkQezUVM3KU7/ztBbi1W0
 AYhEl6t5a9HhG7ZtiCV7Gw37Q0CJvj1KG5LDTzIJfykul3R73x1gi6e14+pcDBI8ME
 4SyWS5iwHAUDhV+BDJU3CYkF+sqmPoIeTiOKeZfY=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <pepe2k@gmail.com>; 12 Nov 2019 17:00:14 +0100
Date: Tue, 12 Nov 2019 17:00:13 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <20191112170013.7f3649b8@kosmio.komorska>
In-Reply-To: <8b724ec0-978f-284d-c7e2-edc71375b42f@gmail.com>
References: <20191112140214.59f2971f@kosmio.komorska>
 <8b724ec0-978f-284d-c7e2-edc71375b42f@gmail.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 11db64e985fea2edd04ce4864e875257
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [MVPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_080019_550830_71362BC8 
X-CRM114-Status: UNSURE (   3.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>
> Is revert to vendor firmware still possible with this change, e.g.
> using Netgear TFTP recovery mode?
>   

Hello Piotr,

Yes, it is possible. I've performed such operation using fw_recovery
command from u-boot prompt.

However, looking at factory logs, reserved space is used somehow by
vendor firmware in a way that I wasn't able to investigate. My
WNDR4300 (bought used) had this whole area erased. I do not know if
that was default setup or deliberate action of previous owner. Vendor
firmware does not reflash that partition at all.

Cheers
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
