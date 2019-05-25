Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EA72A368
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 10:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c40Dnb8AeNgRIRxXfuHnr7LlXk11UjseayFwGKLzw0c=; b=FezYJHOJDySfsutbcgK7Alcf0q
	adQEMIdFPhMKjHz6e+mzwiDVERXo/kq8O6QxOytohvxu0fTqLvxFVW3DkIMPT86h5EgnevSuXLgYI
	l3khKzG1yeFI2RVSu+RFsqFIFViGHXLDp1xEKKbr9aBb7PPO3hYer0apd4KqPbjuiTdOQcfg8TV+y
	x61+Tj31XJ6ysFD7lo7FtRD0FTC0/swKaXcsC5biDFWkEPwHSFEz3yRk9GuGe4mWcrrq5AtTmHwFv
	gI+nxMSHNvKcuCTUi4ByUGZiKw7YOHpK9mUoRpo874nuEp116wLWWeWeYHODJIBTwAQ3q0Yrj4dVD
	DXxyA9Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hURww-0000xw-2e; Sat, 25 May 2019 08:22:42 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hURwo-0000xB-RZ
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 08:22:36 +0000
Received: by mail-lj1-x243.google.com with SMTP id 188so10577433ljf.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 May 2019 01:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9J9vAnT7nYURnQz670VhnGoGAATlrLoTBm+qGdT50cU=;
 b=t3H7jUDkJlLa8h9tJqbPrrZTu+E0l4TWARRYkTBbNKHFQOCYdkzMdJZGa5XJD8MgQt
 vjFR5w9ZndUzhjpN6wAcjSbaiIUaquG0Yt9C641VEVa4Aa7J/SnXq5oEjq7jskaZ7rYN
 OVuPB69RbUp44G3yO97bls02uaGHEqUEBOKh1HR9UjUvo4yoiKNBL8tEymvaNFN3WFmT
 /kEtbIh0t7SDvIXmeTVkWhhq+4HOcjNuHnUpMbbhLGnjjzEr8KYA+jIF0ar4K42moXsw
 0hHYpc/HvEjpPp5aalBMSKyn5fejanxJ/N3ibGy+atnIV+SWlZzQtVIQn+AW71g+31Up
 fjmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9J9vAnT7nYURnQz670VhnGoGAATlrLoTBm+qGdT50cU=;
 b=SuKEhUh/GOAeyg0lJFcQ4nvm1iCEaezBIbloBeELdi9jvII3i6rB2+9UVhdULnPnu3
 GyNMNQb1yM9c4szIFlfVUn1Wl1UX11T+k7znH0YwHV6/tkL3lRdF4cNzot+5/ImSLx2K
 yCLJzauih7rvVJLMbsmJj2A/rGttvzqNCl5ucmoTwQ+WO3yufxz738/nRxgWizfIDNVd
 jp7YiY1CRNy2m66fqsqFx2CzByIJq6x2hQ2hEzFxO4iO2K7EcAqMUDT/AXZQO52Bn5XP
 w1tpGCFVXlCUQDQQhGd9o4/89afG/jOHTjpSBRO0Tx6yPU/haGVCYLuAFVD8gijTqo7Y
 uaow==
X-Gm-Message-State: APjAAAXAthVAJYCGatUFXHYQQrAzSi4zRNv9jGDypY+KaEF141JuZcnj
 FKeilQYBoEjMBDGZXIX6haK7enUL
X-Google-Smtp-Source: APXvYqwEyaa+BLJDCB4EfESWGddepo+LHai+OvDKA2vDVUlAJdjNuQUZyRR6adXPI+kLRG7RfbCg6g==
X-Received: by 2002:a2e:9185:: with SMTP id f5mr25539624ljg.51.1558772550664; 
 Sat, 25 May 2019 01:22:30 -0700 (PDT)
Received: from samsung (095160102144.warszawa.vectranet.pl. [95.160.102.144])
 by smtp.gmail.com with ESMTPSA id
 j22sm1035883lfh.14.2019.05.25.01.22.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 01:22:29 -0700 (PDT)
Date: Sat, 25 May 2019 10:22:28 +0200
From: Cezary Jackiewicz <cezary.jackiewicz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190525102228.21c282e6@samsung>
In-Reply-To: <5057157b-688b-e1a3-dd37-e5869a06f1d2@birger-koblitz.de>
References: <5057157b-688b-e1a3-dd37-e5869a06f1d2@birger-koblitz.de>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_012234_909833_587CC830 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cezary.jackiewicz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC
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

RG5pYSAyMDE5LTA1LTI1LCBvIGdvZHouIDA5OjMwOjI5CkJpcmdlciBLb2JsaXR6IDxtYWlsQGJp
cmdlci1rb2JsaXR6LmRlPiBuYXBpc2HFgihhKToKCkhpLAoKPiBUaGUgbW9kZWwgaXMgYWxzbyBj
b21wYXRpYmxlIHdpdGggdGhlIG5ld2VyIEVXLTc0NzhBQywgYXQgbGVhc3QgdGhlIAo+IGZpcm13
YXJlIGNhbiBiZSBjcm9zcy1mbGFzaGVkIGFmdGVyIGNoYW5naW5nIHRoZSBtYWdpYyBieXRlcyBh
dCB0aGUgCj4gYmVnaW5uaW5nIG9mIHRoZSBpbWFnZSBmcm9tIFJONzkgdG8gUk43MC4gVGhlIG5l
d2VyIGRldmljZSBtZXJlbHkgaGFzIAo+IGV4dGVybmFsIGFudGVubmFzLgoKQ291bGQgeW91IGFs
c28gYWRkIHN1cHBvcnQgZm9yIEVXLTc0NzhBQz8gSSBjYW4gdGVzdCBpdC4KU2VlIG15IGNvbW1l
bnRzIGJlbG93LgoKPiArwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiZWRpbWF4LGV3LTc0NzZy
cGMiLCAicmFsaW5rLG10NzYyMGEtc29jIjsKPiArwqDCoMKgwqDCoMKgIG1vZGVsID0gIkVkaW1h
eCBFVzc0NzZSUEMiOwoKU2hvdWxkIGJlICJFZGltYXggRVctNzQ3NlJQQyI7Cgo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPiArwqDCoMKgwqDCoMKgIH07Cj4gKwo+ICvCoMKg
wqDCoMKgwqAgbGVkcyB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJncGlvLWxlZHMiOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsZWRf
cG93ZXI6IHBvd2VyIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbGFiZWwgPSAiZXctNzQ3NnJwYzpncmVlbjpwb3dlciI7Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdwaW9zID0gPCZncGlvMiAyNyBHUElPX0FD
VElWRV9MT1c+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJuZXQgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsYWJlbCA9ICJldy03NDc2cnBjOmdyZWVuOmludGVybmV0
IjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3Bpb3Mg
PSA8JmdwaW8yIDI2IEdQSU9fQUNUSVZFX0xPVz47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3bGFuMmcgewo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsYWJlbCA9ICJldy03NDc2
cnBjOmJsdWU6d2xhbjJnIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZ3Bpb3MgPSA8JmdwaW8yIDMwIEdQSU9fQUNUSVZFX0xPVz47Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxpbnV4LGRlZmF1bHQtdHJpZ2dl
ciA9ICJwaHkxdHB0IjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdsYW41ZyB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbGFiZWwgPSAiZXctNzQ3NnJwYzpibHVlOndsYW41ZyI7Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZ3Bpb3MgPSA8JmdwaW8yIDMxIEdQSU9fQUNUSVZFX0xPVz47Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbGludXgsZGVmYXVsdC10cmlnZ2VyID0gInBoeTB0cHQiOwoKTWlzc2luZyBp
bmRlbnRhdGlvbj8KCgo+ICsKPiArLyoKPiArwqDCoMKgwqDCoMKgIGdwaW9fZXhwb3J0IHsKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImdwaW8tZXhwb3J0IjsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwwPjsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1c2ItcG93ZXIgewo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBncGlvLWV4cG9ydCxuYW1lPSJ1c2ItcG93ZXIi
Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBncGlvLWV4
cG9ydCxvdXRwdXQ9PDE+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBncGlvcyA9IDwmZ3BpbzIgNSBHUElPX0FDVElWRV9ISUdIPjsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+ICvCoMKgwqDCoMKgwqAgfTsKPiArwqDCoMKgwqDCoMKg
ICovCgpSZW1vdmUgY29tbWVudC4KCgo+ICsKPiArJmdzdyB7Cj4gK8KgwqDCoMKgwqDCoCBtZWRp
YXRlayxwb3J0NSA9ICJnbWFjIjsKPiArwqDCoMKgwqDCoMKgIG1lZGlhdGVrLHJ0bDgyMTFlLXJl
c2V0ID0gInllcyI7CgpPciBiZXR0ZXIgdXNlIG1lZGlhdGVrLHJ0bDgyMTFlLXJlc2V0ID0gPDE+
OwoKPiAKPiArwqDCoMKgwqDCoMKgwqAgcHJfaW5mbygiZ3N3OiBtdDc2MjBfaHdfaW5pdDogbWRp
b19tb2RlIHNldCwgZGlzYWJsaW5nIGVwaHlcbiIpOwoKdW5uZWNlc3NhcnkgY29tbWVudAoKPiAg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IG9mX2ZpbmRfZGV2
aWNlX2J5X25vZGUobnApOwo+ICDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgbXQ3NjIwX2dzdyAqZ3N3
Owo+ICvCoMKgwqAgY29uc3QgY2hhciAqcnRsODIxMWVfcmVzZXQgPSBOVUxMOwouLi4KPiAtCj4g
K8KgwqDCoCBvZl9wcm9wZXJ0eV9yZWFkX3N0cmluZyhucCwgIm1lZGlhdGVrLHJ0bDgyMTFlLXJl
c2V0IiwgCj4gJnJ0bDgyMTFlX3Jlc2V0KTsKPiArwqDCoMKgIGlmIChydGw4MjExZV9yZXNldCAm
JiAhc3RyY21wKHJ0bDgyMTFlX3Jlc2V0LCAieWVzIikpCj4gK8KgwqDCoMKgwqDCoMKgIHJlc2V0
X3JlYWx0ZWtfcGh5KCk7CgpvZl9nZXRfcHJvcGVydHkobnAsICJtZWRpYXRlayxydGw4MjExZS1y
ZXNldCIsIE5VTEwpIGV0Yy4KCgo+ICvCoMKgwqDCoMKgwqDCoCBhcHBlbmQtbWV0YWRhdGEgfCBj
aGVjay1zaXplICQkJCQoSU1BR0VfU0laRSkKPiArwqAgREVWSUNFX1BBQ0tBR0VTIDo9IGttb2Qt
bXQ3NngyIGttb2QtdXNiMiBrbW9kLXVzYi1vaGNpIGttb2QtcGh5LXJlYWx0ZWsKCkVkaW1heCBF
Vy03NDc2UlBDIGhhcyBVU0IgcG9ydD8gRHJvcCBrbW9kLXVzYjIgYW5kIGttb2QtdXNiLW9oY2kg
cGFja2FnZS4KCgotLSAKUG96ZHJhd2lhbSwKIENlemFyeSBKYWNraWV3aWN6CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
