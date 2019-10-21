Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D23DEC33
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K+F1kXIW8IzInZ0HjP64yc3ACzVv1e2SU9/ItiredrU=; b=cjpFMVN/8gvV0BSWekS1S0rU0
	H39wQOBgoHOGc1W1NcdMjpel8HhCfgpGuxauYPQMbiXHykiTU2QPz6c/pnJpZP4xS+e1Np23SzgRy
	grCw5wCUGawuTPuC6DDmjzRu9cSc6KQ2KrSLPnMOYO5EnCYWdpYSmIAwIP6NZ2yJTivtIMDZCxQT1
	/YhjZr5AMskn79LhBB3fltJxdXf6vrbeYmAJknhIYPrLUWHdkst6CmPrZ9V9II698Y7E5KCJ4CGDR
	Ew4U7zO4OpD971MFHxpxx7GMAawDh6lIc4Smx6GZ70LqsH37KH2wBXoiyyWz8Qe3XghUGyU+R2vg+
	/kuSBHl4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWoC-000367-5z; Mon, 21 Oct 2019 12:29:12 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWo3-00035N-Au
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:29:04 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMWo1-00016x-Hp; Mon, 21 Oct 2019 14:29:01 +0200
To: Denis Kalashnikov <denis281089@gmail.com>,
 Matti Laakso <malaakso@elisanet.fi>
References: <20190823135749.32764-1-denis281089@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <2d2f6189-a0b6-c895-49c0-5d20c1ca1ffd@phrozen.org>
Date: Mon, 21 Oct 2019 14:29:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190823135749.32764-1-denis281089@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_052903_533247_071DD6B7 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] uqmi: separate into libuqmi library and
 uqmi util itself
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 23/08/2019 15:57, Denis Kalashnikov wrote:
> It is needed to reuse qmi code, e.g. in a modem manager util
> which is useful on routers with several cell modems.
> 
> Signed-off-by: Denis Kalashnikov <denis281089@gmail.com>
> 
Hi,
patch looks looks but  ....

> +Index: uqmi-2019-06-27-1965c713/dev.c
> +===================================================================
> +--- uqmi-2019-06-27-1965c713.orig/dev.c
> ++++ uqmi-2019-06-27-1965c713/dev.c
> +@@ -353,8 +353,6 @@ int qmi_device_open(struct qmi_dev *qmi,
> + 	struct ustream *us = &qmi->sf.stream;
> + 	int fd;
> +
> +-	uloop_init();
> +-

this would break uqmi cli
	John

> + 	fd = open(path, O_RDWR | O_EXCL | O_NONBLOCK | O_NOCTTY);
> + 	if (fd < 0)
> + 		return -1;
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
