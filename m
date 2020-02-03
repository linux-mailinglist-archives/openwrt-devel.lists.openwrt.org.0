Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4F215109E
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 20:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RAMNO3vgBtPoj+1kONwMALOUjo8vbLzvTUByVZlV45A=; b=iyTQH+N/b/+mdZ5taV+rGQ3WC
	kUjt5hf4M6Ueu8D8TJPfpD7b4rG4XQWHxs7NhJ0iv/A6t7e5P+OWGg/vts0xa7ObWnv2bo4Lupl8b
	pwpsxh7CZ20BOho6e6kJHnvDzwFVt1hZfpu+Ux9gknAVijqaRIX2j9ihn9vOQtEgrnQE8DBxxEwVr
	Bv4nl9hKHwRC5SKXS/ZPs5hKDzT9iI/xdJIY2YsnJAeTfibjpWnV/GGAmkyeVjzZREaACUl4IGK7S
	5XNiGw4VvOf3C/+yuF+2mm9Y8UcRTLKFQ/VZ6N2DHpalkNgiiqD8z5KtCANQED8K8ohHBR08Jil9n
	d63MgM2Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyhsT-0006Ox-Qy; Mon, 03 Feb 2020 19:59:25 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyhsM-0006O3-O3
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 19:59:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id E3EADB38;
 Mon,  3 Feb 2020 21:59:07 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp2.welho.com ([IPv6:::ffff:83.102.41.85])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id vaxSyW6DpBFQ; Mon,  3 Feb 2020 21:59:06 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp2.welho.com (Postfix) with ESMTPS id 2FA37291;
 Mon,  3 Feb 2020 21:59:02 +0200 (EET)
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <20200203195431.33881551@kosmio.komorska>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <2b8b084c-95b0-658e-8d57-f328610b4ccc@iki.fi>
Date: Mon, 3 Feb 2020 21:59:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101
 Thunderbird/73.0
MIME-Version: 1.0
In-Reply-To: <20200203195431.33881551@kosmio.komorska>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_115918_945824_211ECD5D 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: WNDR3700 v1/v2: make u-boot env
 partition writable
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Michal Cieslakiewicz kirjoitti 3.2.2020 klo 20.54:
> Remove read-only flag from U-boot environment partition for Netgear
> WNDR3700 v1 and v2 so u-boot-envtools can modify data there.
>

Any reason, why you have left out the third router in the series, WNDR3800? =

It is identical to WNDR3700v2 except the RAM amount. If the u-boot-env =

read-only attribute is modified for v1 and v2, also 3800 would be logical t=
o =

fix at the same time.


Btw, what is the practical need for this change?=A0 During the last 10 year=
s =

with OpenWrt with this router I have not seen any need for modifying the =

u-boot-env.



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
