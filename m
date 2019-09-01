Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA4FA48A3
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 11:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1ep6AX6oWyOxLdNLd8qZSonTZeF3WGkMMnsSVXtkbU=; b=DGN9nbKrQRHRkz
	eXGa7RsOKkFRwKH2Xaevge+3VREY5kAi2/P++zd2IoHBdoCRkufiI17xGHSV6uQJnXE9OBQ0gM0Uz
	jqtvvIVM9uEzaFgYbg26OtBmpH0i220boTgm1ntpROvTT2T7aLp2Q8pTtwckd4II3gGQJK+Ql1dNA
	VvzVGOcgK+ux2rNEDOqtQi6seColgJu8z/gVH974D82fa5ZPAb0TJULTjnxmaXa1mY7/T5S6ReDYi
	k15ctVOybDpYZq1G11RUOkksINaZ6ijt5nohSDYvpjb6c3N6Pc+fFhwIE4ysqsR9Ig/BFmX5qzup1
	V5Y6XQ6s54nZtm5U2JiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4MSo-0002GV-8r; Sun, 01 Sep 2019 09:48:02 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4MSW-0002G8-CM
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 09:47:45 +0000
Received: by mail-yw1-xc41.google.com with SMTP id i207so3846669ywc.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 02:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DLHw4ktsEvS4OKC5yFN7vy8qdm/epan6SkS6epFsmkQ=;
 b=uoAmUw45Afp6aRr7rpyxu+iV+R/S98TSLYeiRMxwq1MoA13bZO27b8yhguU6nvL0w3
 pDEqjNK4pdROMfIg7xgZbNEDcb/uwlqG541AiB5fTA9dxJqItM4F4+tj/h7cwKQnkDsK
 9ORV5whgJHyVC6rQrZBPUOB3upgo5rgPpWJ7RzbDb8EkW147fJ+knb/F/srC/DXkmJYb
 Qcq5TaRWFFaNOwX3CNCDzRU40CzIJdfrkYq0xr9st2fmboGSz2MTQkM3l0r4d5IcWMWo
 0bZn4D43It/aBWQT41wF3+X4IS5DepjVn76IJWzqf6KBIPf6/9eviYB9A60zANrUydrz
 pZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DLHw4ktsEvS4OKC5yFN7vy8qdm/epan6SkS6epFsmkQ=;
 b=haZxzpfxbVG223DwAvwNxuVrNbAHurI/iK62WgFktEIoYeyFpOb/2nGYCHAOkZmpDw
 fpvRCm1uPzyTDDMEp50gkAQxWap6zPKP2QEVrPhAhG1DhhVMk681vSHMw+zjl1N3jbfF
 5tjQyJWR79aYB3x2ZG25L5qOnrLKQPLBiaDy0jhKitBD6Ht/BA7/tRZYNkITDZ/psJB/
 aMzyS1nTd2Joi0kqjUa3K74rKCT9Ot5D1L8bmZyaezPOPuQp7sedHQTN0MtHm5wqA4N5
 YlGVgyGk3rZuWjz1JvDk+qEafChxoy0aD0Tl1Nyw/1AngeDq1QadtC6QiwrDAl+5KAD+
 T1/w==
X-Gm-Message-State: APjAAAUy51vpwz4fOabKIg5ptujdQwHTxuClhBkIlZ0rrWkOR4MWSlQL
 GzLZaoWEaLsA9lcAuROA6L+cXuS00XWrVR2S8KgbD170
X-Google-Smtp-Source: APXvYqxlFNpByZoDjCH1Lfw4zFhGIZXUIj5V4PdP1KJQsBbVgCpDoA0n8b468m53CR3w5OxJRlegVPD8DUIY5Vk15sM=
X-Received: by 2002:a81:8245:: with SMTP id s66mr7579347ywf.263.1567331260402; 
 Sun, 01 Sep 2019 02:47:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190823083009.10602-1-mail@aparcar.org>
In-Reply-To: <20190823083009.10602-1-mail@aparcar.org>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 1 Sep 2019 11:47:29 +0200
Message-ID: <CACna6rzeu455Jq-WEnvU8R8R4jGB6zM4eY-8S8dQyssqKvn8ZQ@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_024744_468030_CF253B02 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: add generic subtarget
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCAyMyBBdWcgMjAxOSBhdCAxMDozMCwgUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIu
b3JnPiB3cm90ZToKPiBTYW1lIGdhbWUgYXMgZm9yIDg1M2U0ZGQzMDYyZGY3Y2I1NzA0YjE1ZDZh
ZjY3MzBlMzE5NGI1NzEuIEFkZCBnZW5lcmljCj4gdG8gdGhlIGZpbGVuYW1lcy4KPgo+IENDOiBI
YXVrZSBNZWhydGVucyA8aGF1a2VAaGF1a2UtbS5kZT4KPgo+IFNpZ25lZC1vZmYtYnk6IFBhdWwg
U3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4KCkV2ZW4gYXMgdGhlcmUgYXJlIG5vIG90aGVyIHN1
YnRhcmdldHMsIHRoaXMgYXQgbGVhc3QgbWFrZXMgdGhpbmdzCmNvbnNpc3RlbnQgKHdlIGFscmVh
ZHkgaGF2ZSBiaW4vdGFyZ2V0cy9iY201M3h4L2dlbmVyaWMvKS4KCkFja2VkLWJ5OiBSYWZhxYIg
TWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
