Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AC6A04F7
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 16:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+9A2m9Uv50wEvQRnnZhSz+9y/r7hhCFtfk8Et28yHo=; b=L6kxizucPtyRye
	wkrS20TVwZI21sCu+N75l9ust7rFyrXhsK6rqYDCnWG5fkq6BqFKS3S6A7vchowAvR/X7yO5nQ0Mu
	Fmit2o8DXJVZ8sQL4IMspTduIFL19Bz1EPcROyLmTE2kK57oGCo7O52n8760BuICf2MGUy7qXAkZb
	qAAeXWN8QHK9scCQp1+kVMf7Yyf1BCrZm8GBgDHax6m44g9CwNt0SO07v9I8e5ZxwH/yGzNlCd0ix
	gnnqaSA/ZJivi/ZincYRlEwCWYuSe3O9aLMZN4UIwqTEfAaBYSdauwHvoEeYTMa7yDw45Vk5Ly/fJ
	c1x9Tx3Gq2ixenZxSMrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yvj-0007XU-0V; Wed, 28 Aug 2019 14:28:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yvc-0007XN-Sh
 for openwrt-devel@bombadil.infradead.org; Wed, 28 Aug 2019 14:28:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:From:Content-Type:
 Content-Transfer-Encoding:To:MIME-Version:Subject:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L7H3+M2AKw/gMce133m4Ryo05zKBpH/g/CBq/+iuu1Y=; b=NV7oLWr95a1b2EMeq2zYVpiMD
 drmVdROPeiFpJy5gnLFhXKhJ9DBhNga7RK+dWPqXxYBE2pjjsP3TkxFS2Esmk5xYAT1hOlnCZJ6br
 ixDClJXziSBQT3FL607GPHDsIbW+c8rTDwE2clvmr+LZsxp0qISuVaCMaL/8taDDG0kovPdnhfPjD
 ImJLTGB6z7n6GJ3hSbDnyp4Tktp5davbg11Lg1bQN32cnU1+8BiwjlmXyFotPYC3son4+wf/z2JRl
 Ql9amngZath8vUEuMq7/juXYUgLE9MUnBFkAnPrHCQk6PUhlUDixi8PyWaqK3zeO392NZPIHTtHzJ
 ku/cEOLIA==;
Received: from oogw1137.ocn.ad.jp ([153.149.140.167])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yvq-0002ND-RE
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 14:28:21 +0000
Received: from cmn-spm-mts-007c1.ocn.ad.jp (cmn-spm-mts-007c1.ocn.ad.jp
 [153.153.67.163])
 by oogw1137.ocn.ad.jp (Postfix) with ESMTP id 94D88122052E
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 23:27:48 +0900 (JST)
Received: from mwb-vc-mts-004c1.ocn.ad.jp ([153.153.67.75])
 by cmn-spm-mts-007c1.ocn.ad.jp with ESMTP
 id 2ytXiGg4Ixayi2yvMi1l0s; Wed, 28 Aug 2019 23:27:48 +0900
X-BIZ-RELAY: yes
Received: from sgs-vcgw117.ocn.ad.jp ([153.149.141.227])
 by mwb-vc-mts-004c1.ocn.ad.jp with ESMTP
 id 2yvMiLYDvg1Yk2yvMiDopb; Wed, 28 Aug 2019 23:27:48 +0900
Received: from fujisyouji.co.jp (fujisyouji.co.jp [61.126.4.240])
 by sgs-vcgw117.ocn.ad.jp (Postfix) with ESMTP id 7568F24019A
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 23:27:48 +0900 (JST)
Received: from [127.0.0.1] (unknown [177.11.251.36])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 by fujisyouji.co.jp (Postfix) with ESMTPSA id C39E5149050A6
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 23:27:46 +0900 (JST)
Date: Wed, 28 Aug 2019 17:27:49 +0300
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org
From: Yamileth Hardin <t.mitunusi@fujisyouji.co.jp>
Message-ID: <Hardin775925713.588973.3974167669710.JavaMail.support@fujisyouji.co.jp>
X-EMarSys-Identify: 7::1::40161671::7905467998
X-Report-Abuse: abuse@fujisyouji.co.jp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_152819_122897_2C49C081 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.3 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (4.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [153.149.140.167 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 GB_BITCOIN_NH          Localized Bitcoin scam
 3.0 BITCOIN_DEADLINE       BitCoin with a deadline
Subject: [OpenWrt-Devel] Security Alert. Your accounts were compromised. You
 need to change password!
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

Hello!

I am a hacker who has access to your operating system.
I also have full access to your account.

I've been watching you for a few months now.
The fact is that you were infected with malware through an adult site that you visited.

If you are not familiar with this, I will explain.
Trojan Virus gives me full access and control over a computer or other device.
This means that I can see everything on your screen, turn on the camera and microphone, but you do not know about it.

I also have access to all your contacts and all your correspondence.

Why your antivirus did not detect malware?
Answer: My malware uses the driver, I update its signatures every 4 hours so that your antivirus is silent.

I made a video showing how you satisfy yourself in the left half of the screen, and in the right half you see the video that you watched.
With one click of the mouse, I can send this video to all your emails and contacts on social networks.
I can also post access to all your e-mail correspondence and messengers that you use.

If you want to prevent this,
transfer the amount of $500 to my bitcoin address (if you do not know how to do this, write to Google: "Buy Bitcoin").

My bitcoin address (BTC Wallet) is:  3QWsN25bwmC3zaHtPCkLaUXJTsmgqojpCP

After receiving the payment, I will delete the video and you will never hear me again.
I give you 50 hours (more than 2 days) to pay.
I have a notice reading this letter, and the timer will work when you see this letter.

Filing a complaint somewhere does not make sense because this email cannot be tracked like my bitcoin address.
I do not make any mistakes.

If I find that you have shared this message with someone else, the video will be immediately distributed.

Best regards!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
