Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18111BAA8
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 18:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1E9QR5ztgzua1QThO4qW0n22xIefjLsQistiYGNjqGg=; b=DXxdq8TAW3hi3+
	1Hq9gXCu/P88v72zsexPlG52h8uNqvtlFASmMy7JqF651nNjFA3ABIMwe/jIjL8FRpwEsqLIbPWj/
	bRvDCF7tkdE8z2ecLJA7q9cW/WsLSpUuwBV9HSWuCOiVee84CP5lCNVnNTbblmSVsI2n8BLkC72Vk
	9+nTiWCaVqxLk/Cl3ozhK1zrri7pF2NNmVYo3+fxkQnblZ49w3hr4AmcXaPi9CYlSW5icBxNtedpU
	ddcg7bvno+5uck4tmuumA2VLYJjE0hcE969j9yw1idFWoDMJoaNDg54P1m/53x5EP3qf4o0/V4Tgb
	Gc7hMPdjFFvPsjVMj9yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6AV-0005FS-JS; Wed, 11 Dec 2019 17:52:59 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6AO-0005Ew-Ts
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 17:52:54 +0000
Received: by mail-qk1-x72d.google.com with SMTP id r14so12255435qke.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 09:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gS7HXLjskubgcoUn7yI3bYgfVPgGaw2D4J0IknGvUiA=;
 b=aFe9+YS/6/e1ULU4xEAcVW0BKXa6iqU3aG+tn6z/rxt2Yf+kyLDDTnS7e/xMkIuqmJ
 zUBfU01F2Zw+EP1m3CyCXI41qoSD6CSq52S8Gc8/ZYovjJxXQNLa9ja4WGXl3W5bbt2J
 CTutknhWZX0tfLORZHOlQfZ7lOiyl9NeaUD8qolwdknYvjnZJg9NN9KXkherm/qeBfrx
 07JS1y+CtYTYCmifjoWmhlAtrk8Vdlv1VO327rdtAAKw06M+DxjBaRA4JsW733uI2PfR
 NsU2HXelkoIw/Wpz13SpNat9xN7MxDsR/B9bXalMOC+1ark4/OrUu47cRyGvn0LksSpR
 jYog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gS7HXLjskubgcoUn7yI3bYgfVPgGaw2D4J0IknGvUiA=;
 b=UHtxpGucpBybM+hUCXlymQC0MEQSZWynWB6CWj651d8eyk4xWzpaSFQtQ/DcpoDBD8
 nMykKBy3iXPhNmN5jIelgm6ksmkUF8ivoPkIDz+7k2l5eFcjSejX4eFycsZtGQuqtAmb
 pa5rZUt83O7qUrtZ7E3EVzpPg0OUNrFErdyXro3HJjRTmRfVXrI+tWa9IrJ2pgF5gPM1
 Unx+NFhEEs5RgcnynUWIW+BjxFjUbl1pQOsChyN6JkjTmwP30UugL+TNpuG/x5DVD1eD
 bOcpKgqhYXxMqwxk3M711gHGz/OdrsbE5pyUtSzrGMm+ERTIPieQH3oQPdZPdIODoClC
 68JQ==
X-Gm-Message-State: APjAAAWHPV7PO1Aw9iTXGBLVr6BH5YgL8akwGseplepUPoCbmlh5y/9g
 rzGZjHhLC3Wpqr4y3df/GKTHXaW1ifbCwfw968U=
X-Google-Smtp-Source: APXvYqxc0Ro00CtvW+f2Gt7Pqk4+Ff4T5wpgyShORfolfoOhJsag2ZlF9h96EWToERrocJ15O4czV+Av5dB/dev9hX8=
X-Received: by 2002:a37:4f8d:: with SMTP id d135mr4180987qkb.455.1576086771117; 
 Wed, 11 Dec 2019 09:52:51 -0800 (PST)
MIME-Version: 1.0
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Wed, 11 Dec 2019 18:52:40 +0100
Message-ID: <CAJLcKsFZVMBq_5zgHe_OEXH73Mp403CnPB+NUFLmMqX_RKpBkA@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_095252_964070_DD67A2B0 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Inquery
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Tom Psyborg <pozega.tomislav@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgMzoyMiBQTSBEYW5pZWwgR29sbGUgPGRhbmllbEBtYWty
b3RvcGlhLm9yZz4gd3JvdGU6Cj4KPiBIaSBUb21pc2xhdiwKPgo+IE9uIFdlZCwgRGVjIDExLCAy
MDE5IGF0IDExOjI0OjIxQU0gKzAxMDAsIFRvbSBQc3lib3JnIHdyb3RlOgo+ID4gc3VjayBpdAo+
Cj4gQXMgYSBjb21tdW5pdHksIHdlIGRlY2lkZWQgdG8gZ2l2ZSBvdXIgc2VsZiBhIHNldCBvZiBt
aW5pbWFsIHJ1bGVzWzFdLgo+IEFuZCBldmVuIHRob3VnaCBpdCBpcyBpbiB0aGUgbGFzdCBwb3Np
dGlvbiwgcnVsZSAjMTIgIkJlIG5pY2UgdG8gZWFjaAo+IG90aGVyLiIgaXMgbWVhbnQganVzdCBh
cyBzZXJpb3VzIGFzIGFsbCB0aGUgb3RoZXIgcnVsZXMuCj4KPiBTbyBoZXJlLCBub3QgZm9yIHRo
ZSBmaXJzdCB0aW1lLCB5b3UgYXJlIHVzaW5nIGxhbmd1YWdlIHdoaWNoIGhhcyB0aGUKPiBvbmx5
IHB1cnBvc2UgdG8gaHVydCBvdGhlciBwZW9wbGUgKGZvciB3aGljaCByZWFzb24gZXZlciwgaXQg
ZG9lc24ndAo+IG1hdHRlcikuIFRoaXMgaXMgdGhlcmVmb3JlIGEgdmVyeSBjbGVhciB2aW9sYXRp
b24gdG8gdGhlIGFib3ZlCj4gbWVudGlvbmVkIHJ1bGUuIFlvdSBzdGF0ZW1lbnQgInN1Y2sgaXQi
IChndWVzcyB3aGF0KSBpcyBhbHNvIGFuIG9idmlvdXMKPiBhbmQgZGlzZ3VzdGluZyBleGFtcGxl
IG9mIGEgbWFzY3VsaXN0IGN1bHR1cmUgd2hpY2ggaHVydHMgb3VyIGNvbW11bml0eQo+IGFzIGEg
d2hvbGUgYW5kIEkgc3Ryb25nbHkgYmVsaWV2ZSB3ZSBzaG91bGQgbm90IHRvbGVyYXRlIHRoYXQu
Cj4KPiBBbmQgeWVzIHRoaXMgd2FzIGEgc3BhbSBtYWlsLiBBbmQgaXQncyBldmVuIG5lZWRsZXNz
IHRvIHNheSB0aGF0Cj4gcmVwbHlpbmcgdG8gYSBzcGFtIGVtYWlsIGluIHdoaWNoIGV2ZXIgd2F5
IHdpbGwgYWx3YXlzIG1ha2UgaXQgd29yc2UuCj4gQnV0IHRoYXQncyBub3QgdGhlIHBvaW50IGhl
cmUgYW5kIEkgd2lsbCBub3QgZW5nYWdlIGluIGFueSBkaXNjdXNzaW9uCj4gb24gdGhhdCBtYXR0
ZXIuCj4KPiBQbGVhc2UgbGVhcm4gdG8gYmVoYXZlIG9yIGxlYXZlIHVzIGFsb25lLgo+Cj4gWzFd
OiBodHRwczovL29wZW53cnQub3JnL3J1bGVzCgorMQoKCj4KPgo+ID4KPiA+IE9uIDExLzEyLzIw
MTksIHJxZ3hmYyA8cnFneGZjQHZpcC4xNjMuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4g
SGVsbG8gU2lyIO+8jAo+ID4gPgo+ID4gPiBXZSBhcmUgIGEgdHJhZGluZyBjb21wYW55IG5hbWVk
IFNoYWFueGkgSGFvIFppIEd1YW4gTWF0ZXJpYWxzIENvLixMdGQgIC4gTm93Cj4gPiA+IHdlIGFy
ZSB2ZXJ5IGludGVyZXN0ZWQgaW4geW91ciBwcm9kdWN0cyAsIHdlIHdpbGwgcGxhbiB0byAgc2Vs
bCB5b3VyCj4gPiA+IHByb2R1Y3RzIGluIHRoZSBDaGluZXNlIG1hcmtldCAuIElmIHlvdSBhcmUg
aW50ZXJlc3RlZCBpbiBjb29wZXJhdGlvbiwKPiA+ID4gcGxlYXNlIHNlbmQgdXMgYSBjYXRhbG9n
IGFuZCBwcmljZWxpc3QgLncKPiA+ID4gTG9va2luZyBmb3J3YXJkIHRvIHJlY2VpdmluZyB5b3Vy
IHJlcGx5IC4KPiA+ID4KPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBDYXRoZXJpbmEKPiA+Cj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiA+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
