Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FE9156928
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Feb 2020 06:41:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY6Zc3/IiQGp/AWiBU8Zsp/fkuXoPZN1V4ji8nXZ9Qk=; b=HcdF588MliF8Q+
	fqL7qa2rMyvvm10dPJP+Vmhuvev8ymTO4q5mm2Vv9LsRznWTQJUjtJDc1Wv5p6x6/5zWlJ1CZArYZ
	cgAVZSS2vNuYOhPNm4T2vmFgPcbpyfAumEnjd8JOWRAmHSwb271q9k2UI4l15G3cE3ZJ9WPFxf7PM
	W2AIeEFGsB7BcqqhGICxA6CdGGD7v9qzf4fvf8J1QsE2Rkpv863aLCyHXvlc9vWXP9z0lr0ZP2bAE
	Ukve363/CiNbU7IHUOdl/UzLoPMv7t0oDCFqWKW/Y7ywR0DdD3s2CiYwH3pqWwlY31v0T6rNR09Pp
	Y4SJfO7HL2rtpY+SnoSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0fLG-0000dM-Mz; Sun, 09 Feb 2020 05:41:14 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0fLA-0000cx-EL
 for openwrt-devel@lists.openwrt.org; Sun, 09 Feb 2020 05:41:09 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id A2986A611EC; Sat,  8 Feb 2020 21:40:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 222A2A61155;
 Sat,  8 Feb 2020 21:40:49 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
Date: Sat, 08 Feb 2020 21:40:49 -0800
In-Reply-To: <20200208193807.33692-1-freifunk@adrianschmutzler.de> (Adrian
 Schmutzler's message of "Sat, 8 Feb 2020 20:38:06 +0100")
Message-ID: <871rr45ndq.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_214108_519251_D305A60A 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to bcm47xx
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

>>>>> "Adrian" == Adrian Schmutzler <freifunk@adrianschmutzler.de> writes:

Adrian> This change makes the names of Broadcom targets consistent by
Adrian> using the common notation based on SoC/CPU ID (which is used
Adrian> internally anyway), bcmXXXX instead of brcmXXXX.  This is even
Adrian> used for target TITLE in make menuconfig already, only the short
Adrian> target name used brcm so far.

This seems like an aesthetic change, but it will have more consequential
effects in tracing history and searching. I question whether the
tradeoff is worth it.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
