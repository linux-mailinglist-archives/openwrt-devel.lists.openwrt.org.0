Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E895A2549E
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 17:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DIYNkRe82ywElXORqYKg9trF5xHQfmAQxtpankTSENc=; b=GuvuPI2lpguwrS
	zm0f197v5+hEprhntyPOATwJ6bFDNvYBx0AFHwVqW+Ji2LY4wEX3fFQE5FR5MrKa+dlJzxQcxz2o7
	t+6eHVDNQGjb34Q+MCrSeox9w9P6QmxlYyLQDppLFPNO58vah0Ve9yHfTXALeHmjISZ25XqiTJvKb
	4BJFRBUTIX9w74UaMwDPoVqZr2hY9qciOtOQNrRDDMk4FgZx6eYQBQHUmHS9pb8N2WXP8XXEAAmOz
	iviYkWjy1CMc1gbHuhcApZQcFsfgsYpB0xJGowBzQ64ZHr2SE8hlTofF5hoLcSQX2Gl8ZgRpOx5Nw
	Ya0XAugMC0HTYsGZ1tGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT75f-0004oX-Gn; Tue, 21 May 2019 15:54:11 +0000
Received: from mail1.systemli.org ([198.167.223.214])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT750-0003yp-BI
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 15:53:39 +0000
To: openwrt-devel@lists.openwrt.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1558453466;
 bh=1tVtpKXzFC6Fd1DkRp41NPSx3bvgE4Br7ECrl4KXSkE=;
 h=To:From:Subject:Date:From;
 b=9Yq7toOYl/KFcKykXDtyup/oE4RUZf06LDNiWyEiN2gy56LQIXBYjYCJHUIXTb2lP
 U55sEpVs4FsTM7jqokDfwZFDbnFJzZvKd78Vb1Gz/BOSLm7kcxw8JlOTlcxsHn+Jx6
 +1NEtzqG1HSdZFq/90K2mLI7fwawC+2KO/8EReP/U9Yxt2UOU+XBE87BMPvdIrAPnx
 GMM1UyThz54VEVsNK0RIxqbL5C40QSsZPyTNcidg9q9YZ7h6PFS6UMiR4WqiJnjT7t
 Dr8dQUpxZPOz1O+K3LVFFc0N78Y+7ytLMBrfmLklqFRC0stCa1/1HDS+byeJqNoEMK
 oXNnha+EpdugQ==
From: Nick <vincent@systemli.org>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent@systemli.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <ff9d8076-6c33-4cd4-1fa2-2b236d4556ac@systemli.org>
Date: Tue, 21 May 2019 17:44:24 +0200
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_085331_803024_B7B10FA4 
X-CRM114-Status: UNSURE (   0.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.167.223.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Extending iwinfo to set interface to monitor mode
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

If I extend iwinfo to allow setting interfaces into monitor mode, will
it be excepted?
Or is iwinfo just for getting information for an interface?

I use libiwinfo for abstraction for my own daemons.

Bests,
Nick

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
