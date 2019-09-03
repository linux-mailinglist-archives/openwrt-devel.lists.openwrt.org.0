Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29E6A5FF3
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 05:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ph8AjowNGDikJqq5b+1wIFL6bcZvgiuFxWnyX0Wk1eM=; b=MJpLrgNxuyeCn2
	537NHOjjceQ/RZ4Br17oZLJcWzFIXO8BTjHQ8AS/WVRNOnZ3OEqwwIKxAVgq1+kEmGam1IdvEcqtf
	LtTk9U44HYDw/kSD6p2IoSzax6xWvVbGiUdl96CapUTqVmktRHk8OC5POYHAk+e5e7iLqtoT1GMoe
	vRrSOKjO2XbmDIZIeUJMc3Kfw2DaDb7fnK/WdBQvIu2CQtacWBe1rRDLQyxdJpMqVmoEHbeedgCdf
	Izm7ePTTbLWu+VFOCCf8KDT0PB5tOyu12QjKna9EXRYTmrHaVuU+IrQnfjqL4cLJhvXk28Mxex0vX
	F3bYY0RRm9U0YSc9SlSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zvF-0003MH-Oq; Tue, 03 Sep 2019 03:56:01 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zuw-0003Lr-Uw
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 03:55:44 +0000
Received: by mail-yb1-xb42.google.com with SMTP id 1so5420982ybj.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Sep 2019 20:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tE7SpzU6fCEJ2w11T7fhfrQAr+afyX3s4a7OCByd+2E=;
 b=eejOuITGOEAHy4KaqUg/YQbZe5ZKM+USZ7QrKG/yd+tUtEZ6XGWMlfVx070hrtln+T
 RwWR7l409y4pOBGW7OG7bKeQVv8nQ7zXjHrarU3sg9FN1CiSBcMrKPWOOomPYtTqfajg
 yr8+SbS/ce8ggZT363BfiiQMm+qXDrxgthlK9pj2cp0tDQTQ5lAskD64NjRpqgbxPPsO
 A6s8vzwdiaeW4y1tjja/FpLcSx/hWcPTlVb1sLTZVtPoYT2BCzLVxdzr4VXxf8Oe9FuQ
 GwAamt9eOCBnynZGTD/eAKnJqzBNsnzfJP9MvXQONB1kMgjzqr/8Kq7MqwT/4zDPL3Ul
 qM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tE7SpzU6fCEJ2w11T7fhfrQAr+afyX3s4a7OCByd+2E=;
 b=et0Q6SAdJ4xVjb2w+UVE8qo3C66soXUUfu5dzLegAXDFTeEoT7wpeFeEjvTMZV7MqB
 AzC2JHAMdUwMz5xjUwuACDo3KqWXbM9VIETk03LLt9FMUt9GEWqxVzve1udRpVee5oot
 Sy2bkosP3aSTXmD4wHos2Ob/AUi6gcYT8K0eLYDttywUKhykjfZDnPOPsgKXFJxjtjMf
 eCLea9+FKMy3FFjGXGKqnDplTjD1U4+Sy+vGw9Av2SrPhEUGIz7UTHNIxDbWX38TIvbn
 UUnzxQIv7cyTnCsmbhSpBnir56HGuNTDICEqEEX80p8NvoeQ7UQTstvvKKSHpwmM3GjO
 PpXA==
X-Gm-Message-State: APjAAAXSs8bo0NheKW/zTPj3hpz/gTEN5v4Dcfncy9FRYCivolR77d2F
 FG5V9EEjWK8apYYDO/igrAszJwwZpaBjAsVtAnsttA==
X-Google-Smtp-Source: APXvYqzveI5AJuGJOuyjkrwutgwUga6pZ/rXOSdNkqG7Eo9TQwsL0FEsgIWREEAHM4eAq7BezsLFDsYKyva2qiQEmsM=
X-Received: by 2002:a25:3242:: with SMTP id y63mr23055492yby.455.1567482938244; 
 Mon, 02 Sep 2019 20:55:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190902203244.3104-1-hauke@hauke-m.de>
In-Reply-To: <20190902203244.3104-1-hauke@hauke-m.de>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 3 Sep 2019 05:55:27 +0200
Message-ID: <CACna6rwiZBoLVa3EPGSS3h=MWeF_UCUd9HyGqZ+wVjCzi0j3cA@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_205543_024860_EB2715DD 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: mkdev: Avoid out of bounds read
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 2 Sep 2019 at 22:33, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> readlink() truncates and does not null terminate the string when more
> bytes would be written than available. Just increase the char array by
> one and assume that there is a problem when all bytes are needed.
>
> Coverity: #1330087, #1329991
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Minor comment:
That "fstools: " prefix is redundant. As for marking a PATCH I suggest
something like
[PATCH fstools]

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
