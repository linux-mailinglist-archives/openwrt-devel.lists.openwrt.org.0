Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16916D9A6D
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 21:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPLB4LmXXdxdJ4F0wOB9fSxjESSIy3/nUB0TyAeaGKk=; b=dTOO57gv4KmGgb
	yKzKoO5rC5KiKeRvFZIIfp5wO9Rn6aNhLhOHfgyqwlnaA33wFR4iX09S2Mi4cIX0fge7s4RFB1PaP
	Cwr4KALfmeAPgpLCpBOXu6INfgnYl1XsKs7YsyAif2h7Du9xqJyCx29MGFYxvcAozy28ubE27O4nq
	jahTxPH8Zcm8gZtnMBZknEkHUDN6ut87+Bdoo4N/1fl2MGWj3CdAY+/pqw55Sxg5eN+vcEzDUzYbY
	vTvDU8lZb1I4uirCf6YUPfMpluSWOE6XOTER+F2SdpXNi3wmYoIKlaTaQBVPYJBTkf5dQvJQGT4pU
	1swH4A50u2ifty5hZ75w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpHz-00079z-Qi; Wed, 16 Oct 2019 19:48:55 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpHq-000793-JM
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 19:48:47 +0000
Received: by mail-il1-x12a.google.com with SMTP id a5so3872994ilh.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 16 Oct 2019 12:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YHbL+5QIzLcFqhypb0KpPVRRu8yQXJRTWux9Es/40Os=;
 b=ERFdNRbIQIf2Phk4CipkppGpNll9L5iNM7oYynhbPX0MGzsSSP9+BEPobQCega4xKr
 a4eoZ0zhq1fkeY/T4AyCIt4fe+WVJ3Vi+r0NTxCnuODsv7V2zmUfPrvM7+LjM7GS2YwI
 ZuWz063ivq9Immdi+k8LBmDGHFsQ+e031zeGPuK0fietNqpTIK16C9T2e2tMyEAal8cZ
 xIycg1hODUFBw1fgRmVuiGiK2QBBAH+sfq65VatoavG/vOsybuX0yfjw0YRLASDVHKE+
 Ouv5O1ky3IC1QcDDYq6E+yZ3ebMNCPOJ6gtTbUhTT/5anfSu+StVCU2Rt4XQYopTKZEk
 WYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YHbL+5QIzLcFqhypb0KpPVRRu8yQXJRTWux9Es/40Os=;
 b=Cs9+4BbJ5YeBBeM38FqS4XF8b/VyNK5CDfjuPwZMoxvWJGabqodrqldj0o4C6IbXAL
 vXM6Rq88ldDD0kS+vLvNLqUuvCEQIB0R02eB40XC468Op7KHtd5ooQqO1hvFnNMzUxK8
 RvXZgvZxK3XP72gXaOloJVOvnZRVbbkCPfGt/Pb8LIRgeP/iDV44KE4AclDjZpkBdsBI
 6D5f5wiiLqVeJHX14/zXzh0EplBs2ixc6gyC45JhFWvU1HfZVxsFslxeiq5ObRyhXG1e
 /jusA0D/inEPM8P63+eYa1Exkeh0IpygCovsU+Ai4IeWRb97CORGBf5ETBvV+XZHaFxE
 VAww==
X-Gm-Message-State: APjAAAWeRH8KVOE8DeK2aK5WDo6F6gVFwW/zMiBv4U7sfrc2oM3XHMP+
 7x4ZX9FAndN+6O/r732/Zgb0Jd9e53vMIV9kWkDZDQ==
X-Google-Smtp-Source: APXvYqxByB6aCSQidfTbII3fY4UUhdTaqYFYUcvK/qTT16hYLHacRkrbeVDkPJepBpTxCYKo+yfeSEXNcLuTg7lJfew=
X-Received: by 2002:a92:c147:: with SMTP id b7mr14730157ilh.108.1571255325048; 
 Wed, 16 Oct 2019 12:48:45 -0700 (PDT)
MIME-Version: 1.0
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
In-Reply-To: <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Wed, 16 Oct 2019 12:48:33 -0700
Message-ID: <CAOdf3gpLvNFJd4iQpsaTg+-C16KuOjteLgCH1bNGyPj3Eq09_w@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_124846_642620_D2443466 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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

SGkgSm8sCgpMZSBtZXIuIDE2IG9jdC4gMjAxOSDDoCAxMjoxNSwgSm8tUGhpbGlwcCBXaWNoIDxq
b0BtZWluLmlvPiBhIMOpY3JpdCA6Cj4KPiBIaSwKPgo+IGFub3RoZXIgYmxvY2tlcjoKPgo+IG9w
a2cgZmFpbHMgdG8gc2VsZWN0IHRoZSBjb3JyZWN0IHByb3ZpZGVyIHBhY2thZ2UgaW4gY2FzZSBt
dWx0aXBsZQo+IHJlcG9zaXRvcmllcyBwcm92aWRlIHRoZSBzYW1lIGttb2Qgd2l0aCBkaWZmZXJl
bnQgdmVyc2lvbnMgYW5kIG9ubHkgb25lCj4gb2YgdGhlIHByb3ZpZGVyIHNhdGlzZmllZCB2ZXJz
aW9uIGRlcGVuZGVuY3kgY29uc3RyYWludHMuCgpEb2VzIGl0IGltcGFjdCBPcGVuV3J0ID8gb3Ig
anVzdCBzb21lIE9wZW5XcnQgYmFzZWQgZGlzdHJpYnV0aW9ucyA/CihtaWdodCBpbmZsdWVuY2Ug
d2hvIG5lZWQgdG8gZml4IHRoaXMgOykgKQoKRXRpZW5uZQoKPgo+IFNvbWVvbmUgbmVlZHMgdG8g
ZGVidWcgYW5kIGZpeCB0aGlzLgo+Cj4gfiBKbwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
