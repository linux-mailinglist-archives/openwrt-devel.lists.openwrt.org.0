Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D92202693
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jun 2020 23:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VZWrbCRCygA4cE5UkVrzzpI7+9fSAgRVU9rRJ/XcA+E=; b=h1q6v+obBZbdaW
	fpGG+oQbS0wf58p8C2pninDytzPz6KyReNsNYnYT40m4SumBKD2OyQnfyKoF7zjRS8VJXYSb/46mO
	a1/Zz1wY5YJzx7q2CTtBODBPrNQgSlWYmOxzAmMBQnb033+ryV1VA9ItAbs+Pgq6tRRdMb5MrmooR
	qPL8F+buS7zJq10nYHHC9MnO889DiOelnzWvgMM1sXqxJM0sKd603yVBErUz58AapaWNW4mPfox7t
	97UARt/IhXsD1nsXuVAnXlX6kesBiJR3zxd5smV9ZU0PqRdLRDBVKa/URz/1ll2d2rzu6WrtFyinv
	tQmn6uth+7CV2sJzuHRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmkeH-0003qz-DB; Sat, 20 Jun 2020 21:03:37 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmke8-0003qV-L6
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jun 2020 21:03:29 +0000
Received: by mail-wm1-x335.google.com with SMTP id f185so12266100wmf.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 20 Jun 2020 14:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=SuJLO5PWSkQ27di9RWbLgQQabKp5yor0cfZfZSTxNKc=;
 b=aafzV9YyTHKC8WHiUABZmvq1nEZ6/wy+dGiff9j6D8L8q8fxeXZ/zCgkZt/aCudECF
 1CTCDSfGY5keD2Yk+b1YbYVObdyGGfGsozM2pZXPIwIOPwDF0XOO80lW36o+xvssiP4r
 eTLO3MCYa0law27jzbGAOGdOnpH5RCeJPcc1Dtd6dGxedOCTyJ0Lnh3yQhDyvaXh5bEF
 vDO8GL9fz+iCMtNzM6dnpU5rEhs75Wu45dBHRkblV+4d59dVxwBKGWWo/oRwmkACu4JA
 YXFswpUgtir01/2O0n6IBIv9c5VChsvo8/gJzngM+LWgVs7PzYVpDm5eHbyTH5ilnfFi
 iICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=SuJLO5PWSkQ27di9RWbLgQQabKp5yor0cfZfZSTxNKc=;
 b=KgTP9ZpqVlW4JKXqsOw6+f0xlWqDF7VSFAp8ZAEjUU2k+IcBjvzHzm0eHB1TW2FV09
 Ubvod4aZnIUqRR+bL/U36G8V2WcsRdzhGH2LK1/dQvWmhKRAzee+ucb+LKFdgBxKKj+m
 S8g9UUlafwMf6/O9D+qNUiD09O/5DsJD5H81KUD8mCba+NSymVw9hskXDifq7gbgFJ5W
 U55HDmyM1l36odkEpSRu3LTG9FiMCcrKpW6yDDnC0/feg3T97kffr09V6ASakFTP1EkJ
 nVaVm44OTuXaiq4VDCBN8E1CC1KxsHtLnuCfWbZmQ0XI0V7S6J27XJ9uNt47bY3uonrC
 eQkA==
X-Gm-Message-State: AOAM530jx4kuO5nvaNoZl6tJRg30AqobbZZ6d7n76Uh/ItFm4acpYR9f
 wX1DAYMS+fQ7KaOqJRVsPTBcU4pSmno=
X-Google-Smtp-Source: ABdhPJy9QSYT7Dfx0lGS8DP/ouE0Bd6PBw895ie2Q4X8pJTCYurcHlmZhblXaNuTuuXose+YbcQ8gg==
X-Received: by 2002:a05:600c:24c:: with SMTP id
 12mr10561750wmj.28.1592687005881; 
 Sat, 20 Jun 2020 14:03:25 -0700 (PDT)
Received: from metropolis.localdomain
 (host-79-51-202-241.retail.telecomitalia.it. [79.51.202.241])
 by smtp.gmail.com with ESMTPSA id o10sm11640748wrj.37.2020.06.20.14.03.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 14:03:25 -0700 (PDT)
Date: Sat, 20 Jun 2020 23:03:22 +0200
From: Enrico Mioso <mrkiko.rs@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200620210322.GA686@metropolis.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_140328_712536_4FCA7D36 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Dumb Wi-Fi client
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
Cc: =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

hello Bjorn,
hello all!!

I would like to use an Archer C60 as a dumb Wi-Fi client. In particular, I would like to:
- be able to connect to the WAN port of tthe ethernet switch to access the LAN network to which the router is connectes as a client, directly
	e.g.: when I do dhcp o n WAN, the oruter does DHCP on the wlan network
- connect to the LAN ports of the device to talk to the device itself.

The router has both 2.4 GHZ and 5 GHZ radios, and I would like to be able to use both transparently (e.g.: it should just work, connecting with the right one, or both).

If possible then, i would like to be able to connect to multiple known networks, but this is optional.

Can you give me some hints on a good setup? Or may I just use wireless client and let the device do the NAT?

Sorry Bjorn for the direct CC but I know you experienced with ath79 snapshots.... and maybe DS, if applicable in this case...


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
