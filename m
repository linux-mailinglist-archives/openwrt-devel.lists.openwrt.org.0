Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EB312CC45
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 05:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCQjNIjRaUOhUnq0RcNQW+EBmqvEoboL1Yyuf7bLEbk=; b=BvwiEdgtPC8qCx
	GZhaER/oVdP8VvTzSxKVqGklSfWoIPOMV1sMZ2KRSQ1jS1OoBnBW9UvjGLBjc+QhIwg7+95S1h8va
	9Rj08+EidMqt7B5EQgYE61uDA09nHaM2h4ZXSrXxMQ9uE3GwObETLfcNhiaVRbl8zTkVIyUmQYVMp
	WBAo6DyC1H0Y3GeLVwPWDU8I76LX8YiYSwfbUSjtEqu34CIQm+1fu30r6HAlAWUvfL9+yikmPAQoK
	CdnPsjZi2DQ9su8E4TxvJt59XRBd+3819V5d2aAtriT6YkWAQUJtiOhbFkq4PeN2r9nRSgc8f+BX7
	XWsdNRQB2M8oKbt1cVTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilmWj-0007yD-OC; Mon, 30 Dec 2019 04:19:33 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilmWY-0007xu-Qo
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 04:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1577679557;
 bh=GAecaLOXuvcKWzTk7fADowa3X3AM30c145vHwbSG7xY=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=PdmUQ8anG+dv/uFMDZhBFO7xB93HhoFJ5Z6eJR88Rjy/VTAHJtdE9AskxX1dpcVqP
 aFnWzXRdJj9PHFPCc4jDmu36kLpzWlLg9myfhK+SLV4tOfsf3cvxNSlPdM4XK/EeHy
 SGITcReqqSU9bM7qXS0//2Ng7Zj4UZSutzvvDE1c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([87.182.157.89]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4s4r-1in9xy0ufv-0021Jq; Mon, 30
 Dec 2019 05:19:17 +0100
Date: Mon, 30 Dec 2019 05:19:16 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191230051916.54ac3a81@mir>
In-Reply-To: <20191230034251.21873-4-rosenp@gmail.com>
References: <20191230034251.21873-1-rosenp@gmail.com>
 <20191230034251.21873-4-rosenp@gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:UV7fuF58c8NERUl83fEG0qOrGzhMetBVHyAlLE6uuwnmpFagztd
 PDhYHQK5PFINDau4dpaOwSO5nwPF78dR9r57r/+FFF643NDJs4Ka4o+wPGqIVz3MIf2yX9H
 BoJmd6nj8roaYebQNTl2r31BLndmzoswmd10hkFTmHOLdwoRkkindHWWXtnE00MQ+wqvbKc
 yMQOOAaOx/TOxt6KYPXiw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Sbahz55WG+0=:o+IHEQA4gxXqlv1dIFwFfu
 GcGn1Aqv9NTLUqT85a5bE8ZA0N4bpFW24doIQj0Yw/lgPpGrW87OQXdIZaX5r83NcKrB/nvuJ
 mWYaA29oHbO+R8fC2RKas2Bzwl5XZl25SobL0QHAym5f9dSJ+fJBFHWV2/WKN09uAsQfE4lDE
 blbh+UzRQ8qzT/yrg8xO1MNC6C6C6DEuO7WGG5+qra47EyluGWQIS89S5LQqNdF9zZO3gEcna
 pjawgKHyvhFh0d4yVSNbqzOXRd/gUfvO0BC/VO6yhBNC0T+YTvjVU8CWW80K87goTffdtgbV8
 acNVcMqSwQiSzKZJwjfdNcLM8tgmEhxSqF6uRCImN/iiV+KXgs/z7qt1I8mn38aaK9ijQKZBG
 kak1a/sIrEfeW88Hafblt5mNQh7aOt6DvBC/J3Wi4EG61aPWB7a9XHttQPe5rIp0o3Q536gb5
 dMAYnu784QACOHjjrITFzTaddG1ZPjRY9Yy7nNVzoyVqzx2VWkw14jM1akNmdjwx4xd+7brO3
 MpiZ/SE9tV9jZyubewd/GwDsbiiNtcCyXI4fMF5mluHz3DpWNGF1iDqvcXBOnQ9SNoG0KAUj1
 RxugKkqPxl8IYcjKOPnTEn3MX3yjzP0xx375IapCBySBIJ4h40PjR5YXwICpPlblVnFYcK7VA
 0hp55FAL/5WkxaVqFqTt77NXDS8MzUo8WYDoKouhutB4wPdGwNR/Dsgjiyz1d/tI8T41L6ov1
 s0VsglEAmkJloq0ZVPUlBgp+eFApgDCxfNQf5kYrqQhc7bkLbBtJKjOufkGZGlqe/55sUOlje
 kvhl9b7xYMH4oCaQz83J26FnTjiWTuERrygNPy6sv2oJoNCMvhq323PlSF5dHX0xh5StuC8CW
 FmDwZxzEVY/uj47xX2jCzaFIHfUDC276uTRZemubVADtmfIz1B8KErInDhJ1xR+laocaHiwfR
 iZ1k7BO+G+ObZuAz7oEg2aNiwCDZtLxiG1A2YX3MPzw1OX6HOflyV0Ke5q/Q/0iwQz+/ilBHG
 jBTxpUq7xYMc9tgT8RB9iCLkcJdM9Yw4HqIVSxJkG3uPsCDyGZTIDo4CgdtVfAOD5TsQbKdd3
 YSh5KMX1o05RGjZA8rChFeDDU+mazOphnh/TvaNed692tHKstP1zSrqcVuQvVjnPmYta9YOCr
 ckL3JlsqrRQDg08moMYYQnOtoTTqcHfSXIwwcgrr+NFTvIWVbo+vtliGk7BwjI3SUa6ebV1Ij
 uXBuuq5u/0bqhRbsTQREjDC66t6LDH228cdzxmg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_201923_200311_5463DACF 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (s.l-h[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] scripts/gen_image_generic.sh: use
 /bin/sh
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

Hi

On 2019-12-29, Rosen Penev wrote:
> This has nothing bash specific.
[...]
> +++ b/scripts/gen_image_generic.sh
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env bash
> +#!/bin/bash

I assume this was supposed to become #!/bin/sh instead?

Regards
	Stefan Lippers-Hollmann

--
Thanks for looking into this, unecessary bashisms have bothered me quite
a bit as well.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
