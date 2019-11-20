Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A14103CE6
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 15:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1AdATyCrCOj3mtZBLuR7gdaoa4F//YbFtg3VtKRAt0=; b=R8a1MLlVDxGUSV
	QueJzVnSP4WqT4c+TtbBWT4ySZo8VCIcx7ohEzQy/KD21eiVpEwkMCboT0/1DqNSmpkNHt9PDQzha
	IB0AVA/d+Qe6lvY7p0aPhZUreD8z2SrM1jKp3MFDpdPdTfGEQEnnUhCnuz/2eMlgsdWCwgzOea0Pi
	QIeWPr8EDtxSsuKIoljOMQY4eQlwe3/GEnw9j3hm5v0H99gCGlcNHW51f7+sZdyMDa70IzIH056BU
	JJNE4x8cFxIfKpYagUiaQJ4Jt4P8yP8vuSydubyKAGgoBwESrWts8qVnwx5Tr9Fg9WyeMUqe9nPz7
	a7HPkGjt2ojshDIYHjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQZu-0006o2-Ne; Wed, 20 Nov 2019 14:03:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQZn-0006nX-LP
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 14:03:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id q2so27685177ljg.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 Nov 2019 06:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fcWr86BZU0AXyRvBJy191D066HnPZ1jR9CJp2kms69g=;
 b=YnOpjO/+E94J38xn0Ertz7TEgqS3z64HmcGOJoUAb0tVnXpt2p4eRB8Jwkx9Z/KLZU
 Jufxxr39w0dipICfw5an2hcNCKMfCSBEtflfeD0i2uzXyyXFfVOypqvaJJIIiUwHBFOp
 cvDRXCzkmMInA9/l64aHMIVPbLfEdPICYfckfrlLvL+BvuY3IoMP88Om/815kbHDuKRe
 +u/I6TOlUjr+wf/DFQVNzcHHmOj6l6P6P7w9uv8CB/jR1sz1yNqqyq411KutF0JNs3/I
 pRWZUhNyGS8TyRlMZ5qTvDW0s3qLNKUTrIkDfU5ovidZL9OHt7KLqfwEjzsTOBLbKN/F
 SJRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fcWr86BZU0AXyRvBJy191D066HnPZ1jR9CJp2kms69g=;
 b=q46PZa+AJA3kTvqYwgOo2KIETXF/lWXm+snqYg+wHW+LyZzS4I/BrWS4stQijlJBRo
 oHLAz9s7KeMEVNhATG/6QmASVlif9s1c6qsS1T1507ggdeBiYO6GHW4NopBdK3QS5Yt7
 XBJSSm99ndSQ0Jy7/w0FGIAG/gyGlpHR/pbdd2Z0JaTFpuGaP3JbFZNwaVR9oEa+ptLv
 V/3GuId3SV72BDDl0hVjh3/bjlebqBWVLzeEjt/GsO2K3XKvPrv47CEKh9zPFy6IPUgM
 VQaX/KBlINh6zj+p/Uk7BexrC+VVby8pLTSYaNNUgEgKb0jk8PXTmHSOcRF//vHbf3qM
 STbA==
X-Gm-Message-State: APjAAAXQD5iqheK6l/hniWx6iqBRq85ca0t8gnpc2EluRUv9lNQRumj0
 ZIgxslbjJ4NVfk5WQjdzGC6zVeMZbiKC5XVAeK7bN+p+
X-Google-Smtp-Source: APXvYqxCDGpki6aKKKNqLvWoEk8H2EzFSdpCVbhQAn3xoyh9jxbsxwy6B7imwp12ydyxdGhZgKyiSwIEGL/hxyMOS54=
X-Received: by 2002:a2e:91d5:: with SMTP id u21mr2962359ljg.32.1574258600189; 
 Wed, 20 Nov 2019 06:03:20 -0800 (PST)
MIME-Version: 1.0
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-9-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-9-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 20 Nov 2019 22:03:06 +0800
Message-ID: <CAECwjAi+GuDQ7+8dCaFWD+whAWqrEFPHby=E1ZnHoD7kQWWSOw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_060323_701061_7A063054 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH libubox 8/9] blobmsg_json: fix possible
 uninitialized struct member
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

T24gV2VkLCAyMCBOb3YgMjAxOSBhdCAyMDowMSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBjbGFuZy0xMCBhbmFseXplciByZXBvcnRzIGZvbGxvd2luZzoKPgo+ICBi
bG9ibXNnX2pzb24uYzoyODU6Mjogd2FybmluZzogVGhlIGV4cHJlc3Npb24gaXMgYW4gdW5pbml0
aWFsaXplZCB2YWx1ZS4gVGhlIGNvbXB1dGVkIHZhbHVlIHdpbGwgYWxzbyBiZSBnYXJiYWdlCj4g
ICAgICAgICAgcy0+aW5kZW50X2xldmVsKys7Cj4gICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4K
CkFkZCBlbHNlIGJyYW5jaCB0byBpbml0aWFsaXplIGl0IGluIHNldHVwX3N0cmJ1ZigpIHNob3Vs
ZCBzdWZmaWNlLgoKICAgICAgICAgICAgICAgIHlvdXNvbmcKCj4KPiBTaWduZWQtb2ZmLWJ5OiBQ
ZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0tLQo+ICBibG9ibXNnX2pzb24uYyB8IDQg
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2Jsb2Jtc2dfanNvbi5jIGIvYmxvYm1zZ19qc29uLmMKPiBpbmRleCBh
NTk4MGU4YTJiNjIuLjE4NTkyMTExYjRkZCAxMDA2NDQKPiAtLS0gYS9ibG9ibXNnX2pzb24uYwo+
ICsrKyBiL2Jsb2Jtc2dfanNvbi5jCj4gQEAgLTMxNSw3ICszMTUsNyBAQCBzdGF0aWMgdm9pZCBz
ZXR1cF9zdHJidWYoc3RydWN0IHN0cmJ1ZiAqcywgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgYmxv
Ym1zZ19qc29uXwo+Cj4gIGNoYXIgKmJsb2Jtc2dfZm9ybWF0X2pzb25fd2l0aF9jYihzdHJ1Y3Qg
YmxvYl9hdHRyICphdHRyLCBib29sIGxpc3QsIGJsb2Jtc2dfanNvbl9mb3JtYXRfdCBjYiwgdm9p
ZCAqcHJpdiwgaW50IGluZGVudCkKPiAgewo+IC0gICAgICAgc3RydWN0IHN0cmJ1ZiBzOwo+ICsg
ICAgICAgc3RydWN0IHN0cmJ1ZiBzID0gezB9Owo+ICAgICAgICAgYm9vbCBhcnJheTsKPiAgICAg
ICAgIGNoYXIgKnJldDsKPgo+IEBAIC0zNDksNyArMzQ5LDcgQEAgY2hhciAqYmxvYm1zZ19mb3Jt
YXRfanNvbl93aXRoX2NiKHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIGJvb2wgbGlzdCwgYmxvYm1z
Z19qc28KPgo+ICBjaGFyICpibG9ibXNnX2Zvcm1hdF9qc29uX3ZhbHVlX3dpdGhfY2Ioc3RydWN0
IGJsb2JfYXR0ciAqYXR0ciwgYmxvYm1zZ19qc29uX2Zvcm1hdF90IGNiLCB2b2lkICpwcml2LCBp
bnQgaW5kZW50KQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3Qgc3RyYnVmIHM7Cj4gKyAgICAgICBzdHJ1
Y3Qgc3RyYnVmIHMgPSB7MH07Cj4gICAgICAgICBjaGFyICpyZXQ7Cj4KPiAgICAgICAgIHNldHVw
X3N0cmJ1ZigmcywgYXR0ciwgY2IsIHByaXYsIGluZGVudCk7Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
