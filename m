Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598D1EA5C5
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 22:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t82zEnVlMkKVreZbTfbvUKo0EbNxJwmWIZORd0TaDWw=; b=mev18Dl3x2VZkkUh5wgs2Z8q/
	xJKCJvqSGIH6e9w+xvDxvvbIyJxZTrh+5dHXvJ75+95DqIwUmhrmgzZZoXv8B2T7SSVmiy+Ltyhhk
	mCT/7lu/FwWHeM7F2f0XTUXe9Dzw00RK2DANs9AUamUAjf/jrUr9jhM2UlKX/tBJygr4GEJumuLDj
	P+DTCyPD5I0wDO7BEsJVcjGZv7l3oYfOxUGeRxP5O9uhwsiDPj2uI4QIdiXj8eV9dgjAcc4p72llm
	cJbO5jRqusGVTR+WrPEaE3M5Rtlk5lgHy2pq6LURg7DLMrrRpePNcUxdP/JYj+8/jBgCu7TqT4M7s
	Lx0suhPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPvuQ-0006Hl-H2; Wed, 30 Oct 2019 21:53:42 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPvuG-0006HE-LZ
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 21:53:34 +0000
Received: from pd95fdf1c.dip0.t-ipconnect.de ([217.95.223.28]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iPvuB-0002RC-Sd; Wed, 30 Oct 2019 22:53:27 +0100
To: Daniel Golle <daniel@makrotopia.org>, openwrt-devel@lists.openwrt.org
References: <20191030155627.GA139299@makrotopia.org>
From: John Crispin <john@phrozen.org>
Message-ID: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
Date: Wed, 30 Oct 2019 22:53:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191030155627.GA139299@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_145332_864465_6C8C5B7A 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH netifd 2/5] wireless: serialize wireless
 interface configuration
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 30/10/2019 16:56, Daniel Golle wrote:
> +	wdev->serialize = true;

this should default to false, my bad, it's a leftover from my testing 
setup, will fixup when I merge the patch
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
