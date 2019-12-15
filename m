Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B711F7FC
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 14:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QV9xxVBxJswU9tbROWOkpZRPAzGotEs4USWtcgPaaI8=; b=VRargYqGL2HgVC
	WdhI/vWYn2A/68Fn7OtnL4+sD+qeziElYNIiqYBiYNpy8zH0bbv5ohELuX/hVfeSyn7AlWwosrskw
	p/Qm53a24XnX5NRTud2uaROvFIr+Vf/1Ge7fXkdAUhLcid9ctjUmsiw8j2m14UvqoS3mVbO6qqieH
	fe6ZrX2g2Ru5HkPizzPQOv9N7qWO2IKxXeuJezanpXjJOY0r0E08I9SoTY8OjPqeuEb/xAnUopTLU
	mUS3iwYdV8MH158cGJee+zYFeyWFTtDOV5IQw2xjQlZm98jRhI3c63k+q+Yoy8AWjwc7aG0we+zAa
	gNt2+UT5zYUqlkCQuGlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igTw2-0006h4-9v; Sun, 15 Dec 2019 13:27:46 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igTvu-0006gX-Rg
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 13:27:40 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1igTvo-00033s-Gm; Sun, 15 Dec 2019 14:27:34 +0100
Date: Sun, 15 Dec 2019 15:27:28 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: mail@adrianschmutzler.de
Message-ID: <20191215132728.GD4782@makrotopia.org>
References: <008201d5b348$fd4eba30$f7ec2e90$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <008201d5b348$fd4eba30$f7ec2e90$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_052738_894643_32D3E94D 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Lantiq DTS rename
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

Hi Adrian,

On Sun, Dec 15, 2019 at 02:10:14PM +0100, mail@adrianschmutzler.de wrote:
> Hi,
> 
> I consider doing a DTS rename for lantiq target similar to what it's like on ath79 and what I did for ramips earlier that year.
> 
> However, I wonder whether the "soc_vendor_model.dts" scheme is useful there, or whether it wouldn't be better to just use "vendor_model.dts" ...
> 
> Any thoughts on this or any NAK in general?

soc_vendor_model should be appropriate here is well. why not?

> 
> Best
> 
> Adrian



> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
