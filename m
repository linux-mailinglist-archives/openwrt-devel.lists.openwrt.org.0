Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FA710C037
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 23:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9f6yHdz8v1dXRkUZTF18W6bZTjXgYiDCK7yvsfwNJB0=; b=kpB74gYQkGZDha
	VX8s6BjQIvzR6wp8A1Bwl3ps1q6F/+tv0mN2T8+Ji/7fifPTbJecDJ6PmEhrhX1GcB7TpX48X12/c
	hmVL7vPpYoinF64kh7TRJhEZ27ZntDpzQssioNwMYj4pAQjpACWFaCe1d/H9vf8KtxsST10HDjtwg
	oXzR7FMH86X/SSPgR+xIm3cTJVc1ACyPgtrN/wpxZ422g+3dj/AwH5qsZJyv3LmVuzQoNZx/IbqZv
	eM6GNIq4jYd4pixJD4Ss86yHa5TixAeC/Z4QzGf7teSAgCMOF6NzWacxd2ei5lCElPTyTBnHuKHxj
	+/xnvFmMPZdCGLww9jsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5q2-0001OB-G8; Wed, 27 Nov 2019 22:31:10 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5pu-0001Nc-EX
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 22:31:03 +0000
Received: by mail-ot1-x343.google.com with SMTP id q23so14713018otn.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 14:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T7WZNIoPQ2h/7MZg76i9RnOZ4f7o5NM63IqJNL+0Bpw=;
 b=vKk13rZm5Ly3M9MHExK6lcsWX6xkEoBIOX4Sqrifh8R0mOdrD2KdXFMZM8ArjEYBb4
 88/IqYJcXqtoV+CMLfVXJcIAFIzOS3SPVpvt+cyvfTS/a4ypu1vvIaage72jyDXvbU+v
 k99V6aaSBA85nnT+mTimY26deFdd3lwZEEIgn/r3YC7prBg6jBQGZoWsz/BGIsjCUXK2
 EuyGAyEqWJRn5ye1wMDVWcnSDvNcufrvkw+jsMfiNh27xqRIjlaXZBcCjuglhUYq/sya
 nqnFHMvqWpW/ibXVqRXsQsW+xA0VmZUPgDc++a1OI39JkppRH5yOeF6EiyV4VKyNCAEE
 Ts2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T7WZNIoPQ2h/7MZg76i9RnOZ4f7o5NM63IqJNL+0Bpw=;
 b=AH/FEijVTLD9pihGaowWCZAEHznPAQD5GOymMOWBmhkCv8hB+5PU9IEluK7R+POSTK
 Apxq8btzz2/zV87+005doxWL+C7yP+PjX0F1YwhpZ7NPAJWjVuuV6gIbm+xxSd8x19rJ
 Z4MEQVOCAXZ2640Fv2KnXP5QFC8nkjK1pEi+tReYgTV7kQqZB2DYFadDQ+SBYY1gGV8I
 0L8ixA17iQkxMmhNO1a7o+AI98R/VFnbddMZ21HBomQKj42Vy0n6Rsn/rITQY7G4EjE+
 ia6j2GtPMT704BX5J7fsp0T2pvKRzs78L4vZ46RVtN+haeJHk8kD9oFLSCdc4kxQGudS
 s+tg==
X-Gm-Message-State: APjAAAVQZdQ4v1HmSv+CKR7GpQK6sXHEjFcfjwmVahn9zpMUxi05kIx0
 JoYgRvBo5bWX3NxiMpiQZqPDcxvkShnu79DOFjI=
X-Google-Smtp-Source: APXvYqxlPDgmq726u3rSeiOBgxwu/Cv2v7Vr3XI0sEBkHKI/VqEP9NOIsulYRJ276iRAzNvpvxaM9/e1jYazcgOOcIs=
X-Received: by 2002:a05:6830:1da:: with SMTP id
 r26mr5480401ota.186.1574893861491; 
 Wed, 27 Nov 2019 14:31:01 -0800 (PST)
MIME-Version: 1.0
References: <20191125224418.266082-1-rosenp@gmail.com>
 <20191127104917.GB37269@meh.true.cz>
 <8b1128c5-b171-afa1-4bac-c8e0aa9a7ece@gmail.com>
 <20191127121948.GD37269@meh.true.cz>
 <161dbb27-826e-c066-1ddb-951e229e7adf@gmail.com>
In-Reply-To: <161dbb27-826e-c066-1ddb-951e229e7adf@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 27 Nov 2019 14:30:50 -0800
Message-ID: <CAKxU2N-Uj1YJ8XGvNcB961_ar8mdHHzxBvbqS4XEF18unQJYmw@mail.gmail.com>
To: Andre Heider <a.heider@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_143102_488617_05428AAC 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgNjozNSBBTSBBbmRyZSBIZWlkZXIgPGEuaGVpZGVyQGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiAyNy8xMS8yMDE5IDEzOjE5LCBQZXRyIMWgdGV0aWFyIHdy
b3RlOgo+ID4gQW5kcmUgSGVpZGVyIDxhLmhlaWRlckBnbWFpbC5jb20+IFsyMDE5LTExLTI3IDEy
OjI2OjM5XToKPiA+Cj4gPj4gSSBkaWRuJ3QgcHVyc3VlIHVwc3RyZWFtaW5nIGl0IGJlY2F1c2Ug
aXQgbG9va3MgbGlrZSBtZXJnZSByZXF1ZXN0IGF0IGdpdGh1Ygo+ID4+IGFyZSBpZ25vcmVkIGFu
ZCBJIGRpZG4ndCBmZWVsIGxpa2Ugc2lnbmluZyB1cCBhdCB1cHN0cmVhbXMgb3duIHBhZ2UuCj4g
Pgo+ID4gICBnaXQgc2VuZC1lbWFpbCAtLXRvICd+a2FuaWluaS9wa2djb25mQGxpc3RzLnNyLmh0
JyB5b3VyLnBhdGNoCj4gPgo+ID4gZG9lc250IHdvcms/Cj4KPiBObyBjbHVlLCBqdXN0IHNlbnQg
dGhlIGF0dGFjaGVkIHZlcnNpb24gdGhlcmUuCj4KPiBAUm9zZW4KPiBZb3UgbWlnaHQgd2FubmEg
dXNlIHRoaXMgcGF0Y2ggaW5zdGVhZC4gQW4gYWx0ZXJuYXRpdmUgd291bGQgYmUgdG8gY2F0Y2gK
PiAtLXZlcnNpb24gaW4gdGhlIHdyYXBwZXIgYW5kIGRvbid0IGFkZCBhZGRpdGlvbmFsIGFyZ3Vt
ZW50cyBpbiB0aGF0IGNhc2UuCkkgbm90aWNlZCB5b3VyIHBhdGNoZXMgaGF2ZSBDUkxGIGxpbmUg
ZW5kaW5ncy4gSSBjb252ZXJ0ZWQgdG8gTEYgaW4KdGhlIHN1Ym1pc3Npb24uCj4KPiBSZWdhcmRz
LAo+IEFuZHJlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
