Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3695A33948
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Jun 2019 21:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UWlBhf0eEOla7WCvWE05wVsibi20py+Hf5AIOuO4XZk=; b=oj0rII2Mq8kpuewOVsmLd/FP4a
	XQz6vwtGq6FL+xLwoyz3v8w6XT7jk2tICcUtKUCr+x/NAOW80xTvDsXJhjq3LnKz2G9xa1QakKdKx
	00kQYsZYTf2A3CabQ5Z+5ZmlFhEvUV4s6NY5Zsa7+wPeJiH0bPmyyNBwucdTErWgUOWASWfJ4b0oK
	VSc2IH2SvTH/BwDH+cWD649wQ+R1BsQS046tqGe0vHUjxYsKu2ci65vbYysGIIz1WBueWq+EXeIzB
	bc1aUmvrl+6qu4v7C66DBZr4xANqp1uC7hd2qAf9xFVw75GYSa3STTMz3n0wUwBRQ2DT2kBxHHgZT
	YJhp2wjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXszY-0002ui-3c; Mon, 03 Jun 2019 19:51:36 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXszR-0002uJ-Lj
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 19:51:30 +0000
Received: by mail-lj1-x235.google.com with SMTP id r76so17411634lja.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Jun 2019 12:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=EFyoE7liwVpH0n2sfOAIgqNvN+P+DWsrbVyzy8sbSlI=;
 b=tbfl/ss8023pvD3nLV7LqtxuCsn3wcJQVAazBr3nHCSfwkn8o2SR81dYYraIQDNWoT
 P9i7tSixtXoRI8ul6XSWc/NbvSio/B++Te1si3IYIm+Wh8TuwHEjsGOGhJHFhFNhbFX4
 twdn6H/fxwmsrRhtPbRy9Q3hXi4LQ5PIWsh0BiRcUS922fuv2oZtxapW7ksag9vRHAr4
 wRmDuGnp6jFYhjt8KwjWMAip0mzEPQuL/uuptwwZ6NXiCH2til8AmfucL/1hPjNMMJJf
 nnN4FnRFHGF/57gK+0Oel7+RKRTmfBsM29EhJ0kNOaUCJkMdTqi/rkVFNqblCp+Vjveb
 wPSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EFyoE7liwVpH0n2sfOAIgqNvN+P+DWsrbVyzy8sbSlI=;
 b=hYNlEe58IFTfS3N/USnHTLkS4MJ/4/QI5Kio2aeGH4TAugQH9VR0m2+36S7cRpFccg
 5TWLrXaZM+GHyKozRIOV1al9IYLsizo6viWFn+lSHgwZr1cg+vtjqFc55+k31mCn3Jpb
 NraouQxYMOsZeAfAP+9owp22Gqjym6ZzmQttdFTgvthrY0n1Sx/+bmJQ6DMmy+HQAmth
 tVjiY+8QE4lHH+dlMHBXeRHtvlBKjhNsSLDuq1nHKF7IP/6mdn1uUthpvfk9tnxxnQNd
 H2B9CV0zrjPoR5t3/Uxm/Ed4AtXsM4WyDLkxkt7wg0lrclRs0zIE0wsh2tJ4KdVSxClp
 Hvaw==
X-Gm-Message-State: APjAAAVEw46VnkLjkHmysFFrbjtz3pT+wEWqZsrXg8ncI2WIzOjy2Mfe
 xKvJk5v4ChNBO5IS24snWx4dK+Yo
X-Google-Smtp-Source: APXvYqxM5gb3FtlrDolg5DlsbpX0oQK61vFCJtnSJa8C73sUT7fKmjR4zHk1P8MV2dYzkuzgIE2ZAA==
X-Received: by 2002:a2e:390c:: with SMTP id g12mr4433649lja.17.1559591485047; 
 Mon, 03 Jun 2019 12:51:25 -0700 (PDT)
Received: from samsung (095160102144.warszawa.vectranet.pl. [95.160.102.144])
 by smtp.gmail.com with ESMTPSA id
 v2sm3303748lfi.52.2019.06.03.12.51.23
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 12:51:24 -0700 (PDT)
Date: Mon, 3 Jun 2019 21:51:22 +0200
From: Cezary Jackiewicz <cezary.jackiewicz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190603215122.6a8b16da@samsung>
In-Reply-To: <d3184b92-ca35-9a55-c51f-274117e3c50f@birger-koblitz.de>
References: <d3184b92-ca35-9a55-c51f-274117e3c50f@birger-koblitz.de>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_125129_731334_5EBD8B59 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cezary.jackiewicz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Edimax
 EW-7476RPC / EW-7478AC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RG5pYSAyMDE5LTA2LTAzLCBvIGdvZHouIDE5OjA0OjIzCkJpcmdlciBLb2JsaXR6IDxtYWlsQGJp
cmdlci1rb2JsaXR6LmRlPiBuYXBpc2HFgihhKToKCj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9n
cGlvL2dwaW8uaD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4gKwo+
ICsvIHsKPiArCWNvbXBhdGlibGUgPSAiZWRpbWF4LGV3LTc0NzhhYyIsICJyYWxpbmssbXQ3NjIw
YS1zb2MiOwo+ICsJbW9kZWwgPSAiRWRpbWF4IEVXLTc0NzhhYyI7Cgptb2RlbCA9ICJFZGltYXgg
RVctNzQ3OEFDIjs+CgotLSAKUG96ZHJhd2lhbSwKIENlemFyeSBKYWNraWV3aWN6CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
