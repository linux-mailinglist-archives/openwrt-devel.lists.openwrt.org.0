Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF53DF7D0
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 00:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KaNFkNug+l6bdrAMGtB4QARCjmkDe5dRwe575aR4gvc=; b=Mwol9lM+K+LnyYA+TMWThWYfQ
	6Y+KjA/RCys2nYILhg76CL5kQEOrEEyNEx7oZfX33BRRaTcpJStEFUcVcw483EWKmDnf8u+UPTxcY
	0w5rYdenTkqTzdYCKkSoo9wyVL64ko49l5s/yZLIFuYgoKVnhtE6OZ7fJX5M6Lsxd9K5i5IIhymb3
	sfst3lrjXU+BD6PPE0Z5TGXPASIQL+UYRRI7o9Me6qb2MMoMDBTAi0AXlPkpc9qu/J2aGGLiTY203
	XCy/g+LjYJ7WL9mg0+OUQX/D/9+4DwFcxKSsg2ZpV8I7EPekUiaX5KvLJnZK6EuHgM6Sk7K1pSXL3
	vwgjPj6sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfkd-0008AX-4A; Mon, 21 Oct 2019 22:02:07 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfkV-0008AC-Kw
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 22:02:01 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMfkT-0001o5-Vl; Tue, 22 Oct 2019 00:01:58 +0200
To: Robert Marko <robimarko@gmail.com>,
 Kristian Evensen <kristian.evensen@gmail.com>
References: <20190831093936.20621-1-kristian.evensen@gmail.com>
 <CAOX2RU6__MtzhWT5XRcjAXHaLqxb+u4970y8Pf9UjGUAdkdp+Q@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <c2ff0239-05a1-ae23-d9b8-21d163e919f1@phrozen.org>
Date: Tue, 22 Oct 2019 00:01:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAOX2RU6__MtzhWT5XRcjAXHaLqxb+u4970y8Pf9UjGUAdkdp+Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_150159_844724_10564F0A 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ipq40xx: Add support for Unielec
 U4019
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 21/10/2019 18:07, Robert Marko wrote:
> Merging this today has caused a regression in ipq40xx.
> PHY reset patch was is the issue, it now forces devices to have GPIO
> for PHY reset which most devices don't have and if it's missing it
> will make the driver panic and probing will fail.
> So please revert this until its properly resolved.
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 



pushed a fix, please retest
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
