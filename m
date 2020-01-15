Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39BC13CCC0
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ogQ7MAyAc3QvFhxG4nys1KroTHcS8EAxzCjkiX77TKg=; b=h9wI97c1wLtNvTyVAXHHcGhIS
	CrY62Z3nEA/mYzSjQX0sP19RKHr4ko/zVQjk7r1VY4GlMAprUSlND/Vk2sSYSeCWWot92Za0+BpIp
	mMYK4qBbgPOQy+LqpYFLgICqT6fp7LMbuqVmX+m3DcCMTUQz8CCIVoq4QgA+IipX15K3IGkZxnAYv
	fHlNl47j2EMv/XVBudAeQsAt+hlXlGJIxdJ/wiBjXtQlBYp+oKoRSjgTENKltFkAckCXWVO5KAO/x
	MMx79VS5eRsyh3D17dO39lPJdYG9G13dGyloyLpPMV/Ghhjty6KP1y0mUSOZG8beZR9yTu7ZR6TYk
	dupDPd0ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnwy-0005yB-Vi; Wed, 15 Jan 2020 19:03:32 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnwo-0005xO-0b
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:03:27 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irnwk-0006TR-3h; Wed, 15 Jan 2020 20:03:18 +0100
To: Kyle Copperfield <kmcopper@danwin1210.me>, openwrt-devel@lists.openwrt.org
References: <mailman.12647.1574189453.2486.openwrt-devel@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <bc62f670-df40-8cae-395c-81531c9236a6@phrozen.org>
Date: Wed, 15 Jan 2020 20:03:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <mailman.12647.1574189453.2486.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_110322_209918_C1A2F1F4 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] dropbear: move failsafe code out of
 base-files
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
Cc: incoming@patchwork.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged, thanks !

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
