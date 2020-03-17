Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D776187D7A
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 10:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IITWQVaj19a51lTYUU4ZddamNzkXVrUX60oGm407YYI=; b=IF0URBX4NIp8yx
	loA0P0Rf+iPrX0Tr5fvtzK982ItAactuBBw8oijp1Twq7+0K3UwpMAoC4+OosKUTtUliBW6jjokqy
	RPSIquUHDQBmR5KcKz9sniVEy6vHzMwmSzRINTgxB4qUM7ET8vCd8BdQdUCQVrC7Ffqb8FARfVoQQ
	JWbZbF1Qjhb5bDGkCFByUPH2+D0WWsBRROSCRJA8cnZhy+rQd8F8TSYh9O84tWzlQp8DUiTmLI46X
	YkRhLaYGF0T4nWG0lsf75jfO5GIcccq1YOi07xY3Fzwbha+GrkPC43ILCejThPRMumNY4gFCObS6w
	CtPh1SesZuayobGiHQZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8wg-0002JJ-OW; Tue, 17 Mar 2020 09:55:34 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8wZ-0002Iv-Ms
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 09:55:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id u12so22061224ljo.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Mar 2020 02:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nMRnfKOd7qO5U7GqpAuwa/q9lDU7uNfNkGeOkFWU8wg=;
 b=aSGevZaTFL6y767Kp/kA2cDViWhqQJRnd5MX02p7OyfgDNWTgYNVePNcASzQbeRI1X
 WOiIBed8eAzSH4OUd3Xmm63q6nBEVzFbI6eFRcAcGxtNra7uXNIYG3CSZv1rWTJ3NE9X
 f06ACtrXUFLtZ0Mke7U5md8xqO58drkFUetPTrenDOvaGtHzqWfCycuYz5zCf8RQqwGG
 xG/wcXzf62pADaAlvCDYvP78AA3x5CQW2cVxGftSwsxtGn5Kh+NV4uQGd2cMG8vbHOde
 fupV8DT4paCd+yhpEg6rVoghMgnVXpIA42dtuD32cI6r/HhExw7+vLZ19N/rHw6MbZK/
 Tk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nMRnfKOd7qO5U7GqpAuwa/q9lDU7uNfNkGeOkFWU8wg=;
 b=PijWl0MhnjdEyeu2COu+us2RloK2oauz9GTwbU0Zt5KRcMPjMOnbzR7xjb+Lhr+xGj
 eWU7uXALh6IIwe7KdjCgXxnyYf4wfjaPbTUNIny4fi5j6ZKDdnC5ybm/dL1LnZSIjcZF
 FLgjT7ZwkTrX+l9tNqzTeeUBAavgWiPezSTE9uWSvGb+M1bAs8gQwYOp9goTloNx8gJN
 FEhG4xtCzAmDDCBe5DRmmtX6IuTpZV93J0mqZDamdkyMbAIFCVMyrwOwG5vkZtN2HIr/
 O3NlXbYmfOjBXOKQVJ7Hou3+yWNVexHwu71dTIrjZrfxO6YY2TqUB3zEpWtuvwpMp9S1
 OdFA==
X-Gm-Message-State: ANhLgQ04dK/KlgWJ+7BCi8iQxFbLpvjQnzlXTgK2JcBDCZQJHy9RMJ9T
 vUAdaKP/6LA4J47DPjqUqX/vdWyVuTUWel688LQ=
X-Google-Smtp-Source: ADFU+vsmOr65+lJBOaoJ9xXpaUH9+Oh1dt5OLcTCgGAgCMrkbIEq2FjZLsRloduTv0TWtkUrBGCl5MVVTha8hMFOxkI=
X-Received: by 2002:a2e:8595:: with SMTP id b21mr2185507lji.184.1584438924649; 
 Tue, 17 Mar 2020 02:55:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200317090139.17619-1-ynezz@true.cz>
In-Reply-To: <20200317090139.17619-1-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 17 Mar 2020 17:55:13 +0800
Message-ID: <CAECwjAjeG6+eWyaSGMGv59e3fAnDhQZ-9ns1ViBC7r_J3Xpjzg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_025527_775484_E507FADD 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: 5.4: move WATCHDOG_CORE
 symbol into generic
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAxNyBNYXIgMjAyMCBhdCAxNzowMSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBXQVRDSERPR19DT1JFIGNvbmZpZyBzeW1ib2wgcHJvdmlkZXMgZHJpdmVy
L2ZyYW1ld29yayBmb3IgYWxsIHdhdGNoZG9nCj4gdGltZXIgZHJpdmVycyBhbmQgZ2l2ZXMgdGhl
bSB0aGUgL2Rldi93YXRjaGRvZyBpbnRlcmZhY2UgKGFuZCBsYXRlciBhbHNvCj4gdGhlIHN5c2Zz
IGludGVyZmFjZSkuCj4KPiBXQVRDSERPR19DT1JFIGNvbmZpZyBzeW1ib2wgd2FzIGNoYW5nZWQg
ZnJvbSBib29sIHRvIHRyaXN0YXRlIGluIHY1LjIKPiB2aWEgdXBzdHJlYW0gY29tbWl0IDBkM2Ux
NTYzOTllYyAoIndhdGNoZG9nOiBNYWtlIHdhdGNoZG9nIGNvcmUKPiBjb25maWd1cmFibGUgYXMg
bW9kdWxlIikuCj4KPiBBdCBsZWFzdCBga21vZC1od21vbi1zY2g1NjI3YCBmYWlscyB0byBidWls
ZCBkdWUgdG8gbWlzc2luZyBgd2F0Y2hkb2cua29gCj4gZGVwZW5kZW5jeSwgc28gaXRzIGxpa2Vs
eSwgdGhhdCB0aGlzIGNvbmZpZyBzeW1ib2wgaXMgbmVlZGVkIG9uIGFsbCB0YXJnZXRzLAo+IHRo
dXMgbW92ZSBpdCBpbnRvIGdlbmVyaWMgY29uZmlnLgoKSG93IGFib3V0IHRoaXMgdGltZSB3ZSBw
YWNrYWdlIGl0IGFzIGEgbG9hZGFibGUga21vZCBwYWNrYWdlLiAgTGlrZWx5CndlIGNhbiBzYXZl
IGEgZmV3IGJ5dGVzIGZvciBzaXR1YXRpb25zIHdoZXJlIGttb2QtaHdtb24tc2NoNTYyNyBpcyBu
b3QKdXNlZC4KClJlZ2FyZHMsCiAgICAgICAgICAgICAgICB5b3Vzb25nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
