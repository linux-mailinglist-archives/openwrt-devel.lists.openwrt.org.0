Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105E7471EA
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 21:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFDlM8ZdLUcr9yKPWF3FyffubPsT2ejArXE+gBcZ5Q0=; b=eUyx/JtOQAwMIn
	ARR7G/uqPYNNRk5V8PdusL3bFnOCv1LR3ds85h7oKgGsO9SO8as2atC9tCWXv9jkdDTxHOxyQ9FuX
	1xkcU5Ag8vyetGabTlSrI5FMJzToMyKJJ6PiiFRkdIlKWcbQJJBzAaFCwVSjcOk2ovoTVVJs4JJ4P
	x1EmVDqxJDT27121RoxS5S1zsJuaOsxfiTdy5vDmrf7pe6t9KNtCwxWT6Tn2HxqIxqt8dmMiNPKRj
	0pcpckyok0qRC1Vkh+nXOyydR9pmZSHCOrxEHzbJyCCNGogWsD1zqZQrpOw7fxv/3sH8cTNbf+Uqh
	MXrr+B2uptfo9PNiLxUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcEHp-0006qY-5q; Sat, 15 Jun 2019 19:24:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcEHf-0006q5-2G
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 19:24:16 +0000
Received: by mail-qt1-x841.google.com with SMTP id n11so6444175qtl.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Jun 2019 12:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dRuI15zTH/PyLWsKMzJIV5ZFwt/nw2IbihXNl26YHJw=;
 b=K+NOmu9+Dyc3gFBuIUHn4Uv2ZLGuUPtt2YCgSrFoP2xCbMT8DY03gTnF0dlSklqWuz
 MEPPSzLn7tGwzH/PPFynT84avav0FiynamCky+4wLDX64Shxc8STFzotI+M8uVYe8eRE
 8aLXuvhZIY+Bwx8Y/CmnOEEqp9/S3I7nMt59GbQ13hpGsEhrZocLY0fyvo5zqKKlfJZ9
 XdOji4iar7EHL1C3Pz9Y9N/gsOZHVmE49Wl4nyX0Pk+c9++touhLG5VQ9e6TA/owLjI6
 tlSLrrBxBER029qaebO2+ri65M7GsENjJxtUFV35Xs1l8Sd/JhxlGuzpK48JaUpmBTiN
 O8zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dRuI15zTH/PyLWsKMzJIV5ZFwt/nw2IbihXNl26YHJw=;
 b=pCLsmUHxkfxM3yicw2k5ZUHRLEqxmuugdvar/H/ybzpMkDNu8yRGbpqxnkef62juv5
 +UqY0tUDccX/7Du5n3xh65Fc8kF4YzVbZzs3zKCIlS/hGdzsyDEHcq6tg237D3dVeLEK
 z4KX8yzgTS8blDo8fbanUwRMJtNLGuU/qyimm+fqwdyPqjFAnBBDeihe2FT7BWzkBs4d
 vqTFQ08iR9+vnphx0VY8pp8jIvKGHkef6evcbf1vRyKhvgh85+WDVWOq0s6XU/FemKiQ
 WYsSWyI3nC1cn86zMXBlAKPs/OzMDsrtg7bbCHSPRe3qmV9aQ3bs+zan+aU8IK7dnpWg
 tykQ==
X-Gm-Message-State: APjAAAUDxWpA8FpJKnIWDkkDMXRMPgaozmBv+7DJKtOIeYOmq69gt8/F
 6p6thJXvT/a165wiZ8MONqXTosOEiI8l8BniZ5/tKw==
X-Google-Smtp-Source: APXvYqxbBdQBrP9ycd/Ve3qQNTmUbndSxbqxDszQqAjxQInZlj+aDJuF6jtMxYOXDIdHyleeMfV2+g5e9xU3AkPvB2g=
X-Received: by 2002:a0c:afeb:: with SMTP id t40mr14203900qvc.28.1560626653405; 
 Sat, 15 Jun 2019 12:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190614110947.10540-1-avalentin@marcant.net>
 <20190614110947.10540-2-avalentin@marcant.net>
In-Reply-To: <20190614110947.10540-2-avalentin@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 15 Jun 2019 21:24:02 +0200
Message-ID: <CAJLcKsFieKm2EjzxLbPp5VqM8ii4sEG1FbQ22-VnwaCXbB_arg@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Valentin?= <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_122415_136853_8665F48C 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] netifd: fix xfrm interface deletion
 and standardize netlink call
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMToxMCBQTSBBbmRyw6kgVmFsZW50aW4gPGF2YWxlbnRp
bkBtYXJjYW50Lm5ldD4gd3JvdGU6Cj4KPiAteGZybSBpbnRlcmZhY2VzIHdlcmUgZGVsZXRlZCBi
ZWZvcmUKPiAtdXNlIHN0YW5kYXJkIHBhcmFtZXRlcnMgZm9yIHhmcm0gaW50ZXJmYWNlIGNyZWF0
ZWQKPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBWYWxlbnRpbiA8YXZhbGVudGluQG1hcmNhbnQu
bmV0PgpQYXRjaCBtZXJnZWQ7IHRoeAoKSGFucwo+IC0tLQo+ICBzeXN0ZW0tbGludXguYyB8IDUg
KysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9zeXN0ZW0tbGludXguYyBiL3N5c3RlbS1saW51eC5jCj4gaW5kZXgg
NmU1Y2EyOC4uZjYzYWViMiAxMDA2NDQKPiAtLS0gYS9zeXN0ZW0tbGludXguYwo+ICsrKyBiL3N5
c3RlbS1saW51eC5jCj4gQEAgLTI4ODMsNyArMjg4Myw3IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2Fk
ZF94ZnJtX3R1bm5lbChjb25zdCBjaGFyICpuYW1lLCBjb25zdCBjaGFyICpraW5kLAo+ICAgICAg
ICAgc3RydWN0IGJsb2JfYXR0ciAqY3VyOwo+ICAgICAgICAgaW50IHJldCA9IDA7Cj4KPiAtICAg
ICAgIG5sbSA9IG5sbXNnX2FsbG9jX3NpbXBsZShSVE1fTkVXTElOSywgTkxNX0ZfUkVRVUVTVCB8
IE5MTV9GX0FDSyB8IE5MTV9GX0NSRUFURSB8IE5MTV9GX0VYQ0wpOwo+ICsgICAgICAgbmxtID0g
bmxtc2dfYWxsb2Nfc2ltcGxlKFJUTV9ORVdMSU5LLCBOTE1fRl9SRVFVRVNUIHwgTkxNX0ZfUkVQ
TEFDRSB8IE5MTV9GX0NSRUFURSk7Cj4gICAgICAgICBpZiAoIW5sbSkKPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIC0xOwo+Cj4gQEAgLTMyMTYsNyArMzIxNiw4IEBAIHN0YXRpYyBpbnQgX19zeXN0
ZW1fZGVsX2lwX3R1bm5lbChjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3QgYmxvYl9hdHRyICoqdGIp
Cj4gICAgICAgICBpZiAoIXN0cmNtcChzdHIsICJncmVpcCIpIHx8ICFzdHJjbXAoc3RyLCAiZ3Jl
dGFwaXAiKSB8fAo+ICAgICAgICAgICAgICFzdHJjbXAoc3RyLCAiZ3JlaXA2IikgfHwgIXN0cmNt
cChzdHIsICJncmV0YXBpcDYiKSB8fAo+ICAgICAgICAgICAgICFzdHJjbXAoc3RyLCAidnRpaXAi
KSB8fCAhc3RyY21wKHN0ciwgInZ0aWlwNiIpIHx8Cj4gLSAgICAgICAgICAgIXN0cmNtcChzdHIs
ICJ2eGxhbiIpIHx8ICFzdHJjbXAoc3RyLCAidnhsYW42IikpCj4gKyAgICAgICAgICAgIXN0cmNt
cChzdHIsICJ2eGxhbiIpIHx8ICFzdHJjbXAoc3RyLCAidnhsYW42IikgfHwKPiArICAgICAgICAg
ICAhc3RyY21wKHN0ciwgInhmcm0iKSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHN5c3RlbV9s
aW5rX2RlbChuYW1lKTsKPiAgICAgICAgIGVsc2UKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHR1
bm5lbF9pb2N0bChuYW1lLCBTSU9DREVMVFVOTkVMLCBOVUxMKTsKPiAtLQo+IDIuMTEuMAo+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+
IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
