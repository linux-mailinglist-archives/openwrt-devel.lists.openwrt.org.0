Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E098A1BF05B
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 08:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wd8oaj8dvwIX5lhI2QsRE2ESyg00mWMdaU4D31e1SF8=; b=K7umbyfyq7dh0l
	KS8/iTAoeyNlWpg1mBfPYFPP+2Y1eI8UYNORX5AcroeWMaMOMcSDORfIn35eSI0ODT61an83khF8m
	5AyEZh16qMKPWkCzWLa0TS9bFAyYylBoG/t6NDVPV2MrMFXdrRpc+hd7J8c9vmD/n0EIsJuTBgtkD
	j8Ncc0m9msJGzxygP+OkMXQo8dtcHke/jeK1TWoGy5vyFpN4ALRs5ZATgLaQi0vo5MbxGmTeIIrY/
	6R/fku+S1fuQiQQPd4AkEhsfT+v0yiyb5CzomnLEeN9IWExZupW9CJN5kmusZra4dC8+SxHvK7Uli
	xbBnq3tLCHkwu7GMM0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU2od-00052i-31; Thu, 30 Apr 2020 06:36:59 +0000
Received: from mail.lucabert.de ([2a0a:51c0:0:52:1::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU2oV-00050d-70
 for Lede-dev@lists.infradead.org; Thu, 30 Apr 2020 06:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lucabert.de
 ; s=2020;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vvodHgeVYm1dUkotf+zJWDwuvj5vLLleDceM+8sL1dk=; b=cPv65KkVcAtJmP+PqlgJobPXMZ
 lYMLj329xDIKNb9IVxBtEJc8kNzKLDCAVcxsQd2N+mFuxB0AiyJo1CD2sgXNb9L+m9HliXgt/d8lu
 Rga96JLBxVhnOwgIUSyR3hyRA;
Received: from [2003:c2:7f18:bd00:2::1]
 by mail.lucabert.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <lucabert@lucabert.de>)
 id 1jU2oG-0004el-2i
 for Lede-dev@lists.infradead.org; Thu, 30 Apr 2020 08:36:36 +0200
To: Lede-dev@lists.infradead.org
From: Luca Bertoncello <lucabert@lucabert.de>
Openpgp: preference=signencrypt
X-Face: *N]JhbB="`Ho]_HEy]Qn@=#}#T6Vx3(!v3%-=Lwa[wIk=1s&:}id_AN,wf{$tA{8HKlwU?oOm!.s.`}V-eD0+^qOUWZ@E8qyUK$y#j3|JBnvoKhpY/U@`"|@}$UuZQfyS1o&4(DceOp/Z"8[.S|lFMA;
 IC-Qb=i"z$~/mG)Ug"k7b!YT[r6b$'}ScyBxev]mRJf}2Lm:_!F@Fp82w;
 N-}hPXl~vkEZ[PjiT~R{RT||L-%JV$HmY^`[_L
Message-ID: <5c39c498-ae37-268d-24a0-57be4073283a@lucabert.de>
Date: Thu, 30 Apr 2020 08:36:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_233651_398853_6F7484B0 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] After upgrading to 19.07 WLAN does not work
 anymore...
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi list!

I upgraded my WLAN Switch to 19.07.
OpenWRT works, but WLAN is off...

In the "Wireless Overview" page I see:

radio0 Generic 802.11bg
       Device is not active

and all WLAN i configured are "disabled"...
Could someone help me? I really don't understand why radio0 is not active...

Thanks a lot
Luca Bertoncello
(lucabert@lucabert.de)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
