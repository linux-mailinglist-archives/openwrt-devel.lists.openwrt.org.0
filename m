Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D3415943B
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 17:03:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qkajEZQu+y8RSoM6c6B4xnKZsnJQ2ciNHqw5j9CKP2g=; b=WsUfyYAkquzVAbKsrUWeIXUUsi
	BNj24zFc8eywguqr5620aNm9Fdg35Th0fhLBSj7Bd9dMooLxJfMVPW8aIRqSpJSZbRC+LTMnc40uE
	535U3uYxWgkuXbUN8bJ64VeCID24UD25BoBBf3om7uXApI7MWpgTWf7g0zShA8XhkSIdJ46011thB
	/KInNxnc2Ru8L+z7mFRywHX7kVxnCIne3sq5LR/mHXS0rfzm5DwV5RWnIiLsRKCGs+EPBSJlHgaZx
	HUjKjxHxaizF2MaQjQ2Dt87RYYccjAz3a6W/IVORgW3x/UBHMoVLkp4n/q3ecAOxHSQo8PF/X0LQS
	6l1odQ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Y0r-0002nl-Ur; Tue, 11 Feb 2020 16:03:49 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Y0k-0002mF-HH
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 16:03:43 +0000
Received: by mail-yb1-xb31.google.com with SMTP id b141so3436861ybg.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 08:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=OfGyeWI8LX5Xamh8NtOqnNm1+nb1ST8gnRMY9C+4tLk=;
 b=OyLOWuWnS4zHvdLilRbS3CXtfmk6CODw6uzUhd6ypeaRUE3+8SLH9ubXOajVmpKAfT
 DK+xhPsUD14h27rdD6EFJ5tPIXhAYep6m+fuCuOcpy0cTN4z5iea2YstsiykYCpY+dtm
 ayPcrIeVr1ZbuYRu6J2vJW3gB+ImE+fPyKrZh5Y3s1lw9FrQ/7ByW9slOGGcNoQd7dZ1
 ajDVu3In55Y+Fi+qKjK+rfYr3IgJGMtLtpD/N5VW2xlBaO/rKg2/6r32lsCdR5LBghkp
 bKbpKtR7ASdn1LJjkT043CTThfOK8Ew6C/cg9cciJcIz/TW542AMVnUyeiLhQOHQFQmK
 UAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=OfGyeWI8LX5Xamh8NtOqnNm1+nb1ST8gnRMY9C+4tLk=;
 b=BctKQUTUzUcmL851hpWmOZxCegMv03jbM6cYTmLJVLDEQnuB3V1BQoFozX6QqiU245
 wpgMF8M+N2qo18K2diP2hn4AEHuOkh+tq2/sHorMfMqCmVRZLmpXNVuRZ+yL41UsXVoI
 G6c2YgKBobTkVlbcr8bcu2zucyzcvAJ+Um+4MgZiAycIW3x4N/svG15KDKNYjbYOEqdF
 THeCm3g0KgES+P6bYP6dL+VMgNTdUi/qXKwceOjr/Ov9MuyVpqWLDY7oBXWE19Z9f4K+
 t6AKdwsDqMSOSVDYA4PYSH51bwDBzvFg0Nu7ylspPLvOQuZwyHNHHiC2qzvPSXekNqtw
 LiJg==
X-Gm-Message-State: APjAAAWA3Id2UAg1AT+mrorHciQJMajzYxBFdhVIiEp/J+mpe7VsetUC
 EsSokelgiz9DlFmu/ghoLzof5y8jbFZoV6H04ao4hSDK
X-Google-Smtp-Source: APXvYqyaAvSLrY7Lk8NYUxsrZtY73e+PGQmlmvRlrlPI/bZi65Bg0yjaEr3CQ8ReL7ayaLCLALLkmPiBFq9RxZvVmsY=
X-Received: by 2002:a25:d796:: with SMTP id o144mr6571129ybg.455.1581437018001; 
 Tue, 11 Feb 2020 08:03:38 -0800 (PST)
MIME-Version: 1.0
References: <CACna6rzSoJmDadcXO5zwrjo2Xzrw-quL1edE9bqO_Whq6nSPmQ@mail.gmail.com>
In-Reply-To: <CACna6rzSoJmDadcXO5zwrjo2Xzrw-quL1edE9bqO_Whq6nSPmQ@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 11 Feb 2020 17:03:26 +0100
Message-ID: <CACna6ryoz=-om7KbHiS+1YfP5jzQE_iByP269q4eH7Z3Xv4x5w@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_080342_598594_2425E5F1 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b31 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Wireless monitor interface causes device to run
 out of memory
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCA1IEZlYiAyMDIwIGF0IDExOjE0LCBSYWZhxYIgTWnFgmVja2kgPHphamVjNUBnbWFp
bC5jb20+IHdyb3RlOgo+IEkgbm90aWNlZCB0aGF0IG15IGJjbTUzeHggZGV2aWNlcyBydW4gb3V0
IG9mIG1lbW9yeSBhZnRlciBydW5uaW5nCj4gd2lyZWxlc3MgbW9uaXRvciBpbnRlcmZhY2UgZm9y
IGFib3V0IDIgZGF5cy4KPgo+IFRoaXMgcHJvYmxlbSBvY2N1cnMgc2luY2UgMDY5NGQwOGM4NGZk
ICgiYmNtNTN4eDogc3dpdGNoIHRvIGtlcm5lbAo+IDQuOSIpIHdoaWNoIGJ1bXBlZCBrZXJuZWwg
ZnJvbSA0LjQuNTMgdG8gNC45LjE0IGFuZCBpcyBzdGlsbCBwcmVzZW50Cj4gd2hlbiB1c2luZyA0
LjE0Lgo+Cj4gSW50ZXJlc3RpbmdseSB0aGlzIG1lbW9yeSBkcmFpbiByZXF1aXJlcyBhdCBsZWFz
dCBvbmUgb2Y6Cj4gbmV0LmlwdjYuY29uZi5kZWZhdWx0LmZvcndhcmRpbmc9MQo+IG5ldC5pcHY2
LmNvbmYuYWxsLmZvcndhcmRpbmc9MQo+IHRvIGJlIHNldC4gT3BlbldydCBoYXBwZW5zIHRvIHVz
ZSBib3RoIGJ5IGRlZmF1bHQuCj4KPiBUaGlzIGlzICpub3QqIGEgbWVtb3J5IGxlYWsuIFJlc3Rh
cnRpbmcgd2lyZWxlc3MgaW50ZXJmYWNlcyBmcmVlcyBhbGwKPiBjb25zdW1lZCBtZW1vcnkuCj4K
PiBBbnkgaWRlYSB3aGF0IG1heSBiZSBjYXVzaW5nIHRoaXM/CgpUaGlzIHJlZ3Jlc3Npb24gaXMg
Y2F1c2VkIGJ5IDE2NjZkNDllMWQ0MSAoIm1sZDogZG8gbm90IHJlbW92ZSBtbGQKc291Y2UgbGlz
dCBpbmZvIHdoZW4gc2V0IGxpbmsgZG93biIpIHdoaWNoIHdhcyBsYXRlciBiYWNrcG9ydGVkIGFz
CjUzYTc2ZDYzM2I4NiB0byB0aGUgbGludXgtNC45LnkgYnJhbmNoLgoKUmV2ZXJ0aW5nIHRoYXQg
Y29tbWl0IGZyb20gNC45LjE0IG9yIDQuMTQuMTY5IC9maXhlcy8gZGV2aWNlIHJ1bm5pbmcKb3V0
IG9mIG1lbW9yeSBwcm9ibGVtLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
