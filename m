Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88558FE86
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 10:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+OcwllF77LOWEMehUMEo01oWXrofUtpPtQZh+1I2k4=; b=RcTKFfdWoYn+I2
	aSoSSoV4gbWOath2Vw04WNv9bhm08nGMJw0tk1pdtMTmUWCYQSuYXrWrvOivuSPkiCaXjfO1705Oj
	1Q+oGGPdBem2Jdtq+ILeiSOk0dC3XxJJ/G4ohW4Vf02zUJKckrgtbQDu5DPSipjDMeXQAZv8rC5qH
	EnmiGb9BWep+YdCEDoPM/gJjST4wrt5TqWDoKd+Liv3YofEUGOhwddx5ljpA1W6WAs1U9p3cjlitT
	qnO20bc0TRq1KjlapCRSjqyzN/hEdwE3j1FZs0cn28DFAzeAY0OwtWYtpUdRYqDnyydjExaKK0/um
	f2f/G5GiOnVyB2aF8LTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXwG-000535-VU; Fri, 16 Aug 2019 08:50:24 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXvz-0003ql-33
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 08:50:09 +0000
Received: (wp-smtpd smtp.wp.pl 23574 invoked from network);
 16 Aug 2019 10:49:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565945398; bh=Rgmcjr/s9grJDPZf1RsTYOjJkClpt17bLhPFnsLbfh8=;
 h=From:To:Cc:Subject;
 b=K8+01I4bsc7EdGblzfvwhJ0R30Y5vsL2+IzNbgI9zr8h9VzI8TGnz4lzayKWu+kW5
 niFeKqeC+WAIk9VRji3YRbzFKtb7rBW5pnhoANOFrZph+xSXb6EPqabF3LfAekI4UA
 OROFYYxMrGVm5L1aoYXoz07e+WWVOSazXOL5Msso=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <martin.blumenstingl@googlemail.com>; 16 Aug 2019 10:49:58 +0200
Date: Fri, 16 Aug 2019 10:49:57 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Message-ID: <20190816104957.7f1e1d80@kosmio.komorska>
In-Reply-To: <CAFBinCAJax9XE+NE4A25qkuWXSJnxog6JtnSK2FfjDkcEZU=Hg@mail.gmail.com>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224446.3334b7e6@kosmio.komorska>
 <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
 <20190814105922.1c713789@kosmio.komorska>
 <CAFBinCAJax9XE+NE4A25qkuWXSJnxog6JtnSK2FfjDkcEZU=Hg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 7c50616b399d5af0bcaee95a35afabf5
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [kfO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_015007_664616_4D378F30 
X-CRM114-Status: UNSURE (   3.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] ath9k: mtd-cal-data vs firmware bin file
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Martin,

Thank you (and Dmitry Tunin and Chuanhong Guo) for explaining this topic
to me. Now it is perfectly clear. So the idea of reading mtd isn't
completely abandoned, Martin's approach just seems to be more flexible
and universal. On the other hand, I've never assumed sparing this 4k
(even less, as I guess it's squashed) will yield any reasonable gain for
tiny flash devices, it was more of internal design curiosity.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
