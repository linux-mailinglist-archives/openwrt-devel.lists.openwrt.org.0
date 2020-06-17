Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A1D1FD6B8
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 23:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Od9q5fRjVO/nvm8gywmMxFiidEmNjVUgFjzO8+VVrs=; b=WTzmlsaTvYMSql
	VULiOh5yQ9Su4jliVDCvz5AQQjmZri5KXR9KZIDv1HTUmD6W1YH+nuPWcxwkyuqd8r7CyNkKBuDXX
	VtLCbZsJ0/n6lcdGsVgCdDrlqUnSwlAvVhcgOsGJUvASbOYFtoamfXL8SPBBnY12+f0pN6BTFeF8a
	9ZTDf3wI6JPNSJJ9BQhPRceKW5yYI6yAKecbMyy1ntx5kan+LCEooexmIUDHAlpISCJh+rtuIs5yh
	JoSSS9sh7g+GHnz3ti9rqdcShinGzOm/5tSBtr5a46sXqaFCZar5/oZQoLYgj67zHkxOMXDqjZe1V
	2yJg7n450oxZdwLjBukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfJD-0008Fz-10; Wed, 17 Jun 2020 21:09:23 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfJ5-0008FI-Pe
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 21:09:17 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 2e727be6
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 17 Jun 2020 20:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type:content-transfer-encoding; s=mail; bh=aicm+hcEimZg
 0nzDmYXZdX6kJoI=; b=M9wdNA4Xfpd5zlRA3/7qkW9fZQiP4PbGPn2zoymHvent
 1bUdNjjmi6wmtJOETmZ5Zj/Ep1+uZwMRIbYynrDLHaXsWRM/fJyOlBYK+g1C5Xoy
 H9I7FzTtuYb20lYBWPSQL3zJ36GJkuPhdw91VXhJncKAGnSxysu5Er2sU8NKvIFp
 CJzlu0ZZ2lzYpg6usNwzTl6RQa+Ry/teGsVe34u8veQFpogTzAFXVSmSZ9Dy0vT8
 EmbU6iiVxAfbzC29+Q+R3PmWzYPCTeXiEGgNPw/4kyDaJfLCpFHCmAykUiS6Q0hP
 KOtdSNfrjrHhke0dR6Ec7bTSvoew85PrQ04mPq/1OQ==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id a12f9b9e
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 17 Jun 2020 20:44:20 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id w18so4614057iom.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 14:02:28 -0700 (PDT)
X-Gm-Message-State: AOAM532yP8+LnEWRKx0wUSnNIoqpdRDfz/G4Iaqm3FB6BiD+Tlh9aOGP
 qo0im9AWpjqzYHlDrNd+Mm2d3lzT9QG3J4Bq2qo=
X-Google-Smtp-Source: ABdhPJxmt2zdRkvCe4UaIzxW8+0y12CMuqGK0BMVn5yknBQ+VXDYRGf073Yy08u92ieahjc4/nWx/EefS5cz3VCJhyw=
X-Received: by 2002:a05:6602:809:: with SMTP id
 z9mr1398403iow.79.1592427747718; 
 Wed, 17 Jun 2020 14:02:27 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
 <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
 <20200617204510.GA396261@zx2c4.com> <20200617205443.GA403252@zx2c4.com>
In-Reply-To: <20200617205443.GA403252@zx2c4.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 17 Jun 2020 15:02:16 -0600
X-Gmail-Original-Message-ID: <CAHmME9qX2dVBf-23g1ASW1EFaX_4VLUH5QZBCM71NVfe6rtaxA@mail.gmail.com>
Message-ID: <CAHmME9qX2dVBf-23g1ASW1EFaX_4VLUH5QZBCM71NVfe6rtaxA@mail.gmail.com>
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_140915_972684_E0DC79B2 
X-CRM114-Status: GOOD (  26.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Any progress on R_ARM_THM_JUMP11 issues?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 WireGuard mailing list <wireguard@lists.zx2c4.com>,
 Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQVJNIGZvbGtzLAoKUnVpIGVtYWlsZWQgdGhlIE9wZW5XUlQgbGlzdCBhbmQgbWUgYWJvdXQg
YW4gaXNzdWUgaGUgZm91bmQgd2hlbgpjb21waWxpbmcgV2lyZUd1YXJkLiBIZSB3YXMgY29tcGls
aW5nIGtlcm5lbHMgd2l0aApDT05GSUdfVEhVTUIyX0FWT0lEX1JfQVJNX1RITV9KVU1QMTE9biAt
LSB3aGljaCBJJ20gd2VsbCBhd2FyZSB0aGUKS2NvbmZpZyBhZHZpY2VzIHBlb3BsZSBub3QgdG8g
ZG8gLS0gYW5kIGdvdCB0aGUgZHJlYWRlZCAidW5rbm93bgpyZWxvY2F0aW9uIDEwMiIgZXJyb3Ig
d2hlbiB0cnlpbmcgdG8gbG9hZCB0aGUgbW9kdWxlLiBJIGZpZ3VyZWQgb3V0CnRoYXQgSSBjb3Vs
ZCAiZml4IiBpdCBpbiB0aGUgV2lyZUd1YXJkIGNvZGUgYnkgZWl0aGVyIGRvaW5nIHNvbWUgZXh0
cmEKc3R1ZmYgYWZ0ZXIgdGhlIHRhaWwgY2FsbCwgc28gdGhhdCB0aGUgQiBiZWNvbWVzIGEgQkws
IG9yIGJ5IG1vdmluZwp0aGUgZGVzdGluYXRpb24gb2YgdGhlIHRhaWwgY2FsbCBhIGJpdCBjbG9z
ZXIgdG8gdGhlIGNhbGxzaXRlLCBzbyB0aGF0ClRIVU1CMidzIGp1bXAgZGlzdGFuY2UgaXMgc2hv
cnRlciBhbmQgZml0cyB3aXRoaW4gdGhlIEIncyBsaW1pdGF0aW9ucywKdGhlcmVieSBub3QgbmVl
ZGluZyB0aGUgIkpVTVAxMSIgcmVsb2NhdGlvbi4KCk9idmlvdXNseSByZW9yZGVyaW5nIGNvZGUg
Zm9yIHRoaXMgcmVhc29uIGlzbid0IGdvaW5nIHRvIGZseSB3aXRoCnVwc3RyZWFtIHBhdGNoZXMs
IG5vciB3b3VsZCBhZGRpbmcgZHVtbXkgY29kZSB0byBhdm9pZCBhIHRhaWwgY2FsbC4KQW5kIHRo
ZXJlJ3MgYWxyZWFkeSBDT05GSUdfVEhVTUIyX0FWT0lEX1JfQVJNX1RITV9KVU1QMTE9eSB3aGlj
aCBzZWVtcwpsaWtlIHRoZSByaWdodCBnbG9iYWwgc29sdXRpb24gZm9yIHRoaXMuCgpCdXQgSSBh
bSB3b25kZXJpbmc6IGhhcyBhbnlib2R5IGhlYXJkIGFib3V0IHRvb2xjaGFpbiBwcm9ncmVzcyB0
b3dhcmQKZml4aW5nIHRoaXM/IENvdWxkbid0IHRoZSBjb21waWxlciByZW9yZGVyIGZ1bmN0aW9u
cyBpdHNlbGYgbW9yZQppbnRlbGxpZ2VudGx5PyBPciBhdm9pZCBlbWl0dGluZyB0aGUgQiBpbiB0
aGUgY2FzZSB0aGF0IHRoZSBqdW1wIHdpbGwKYmUgdG9vIGZhcj8gT3IgZG9lcyBub2JvZHkgY2Fy
ZSBtdWNoIGFib3V0IDMyLWJpdCBBUk0gdGhlc2UgZGF5cyBzbwppdCdzIGp1c3QgZmFsbGVuIGJ5
IHRoZSB3YXlzaWRlIGFuZApDT05GSUdfVEhVTUIyX0FWT0lEX1JfQVJNX1RITV9KVU1QMTE9eSBp
cyB0aGUgYmVzdCB3ZSd2ZSBnb3Q/IE9yCnNvbWV0aGluZyBlbHNlPwoKSmFzb24KCk9uIFdlZCwg
SnVuIDE3LCAyMDIwIGF0IDI6NTQgUE0gSmFzb24gQS4gRG9uZW5mZWxkIDxKYXNvbkB6eDJjNC5j
b20+IHdyb3RlOgo+Cj4gT24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMDI6NDU6MTJQTSAtMDYwMCwg
SmFzb24gQS4gRG9uZW5mZWxkIHdyb3RlOgo+ID4gTG9va3MgbGlrZSBteSBleHBsYW5hdGlvbiB0
aGVyZSB3YXNuJ3QgMTAwJSBhY2N1cmF0ZSwgYnV0IGl0IGRvZXMgc2VlbQo+ID4gbGlrZSB0aGUg
aXNzdWUgb2NjdXJzIHdoZW4gZ2NjIHNlZXMgYSBjbGVhciB0YWlsIGNhbGwgdGhhdCBpdCBjYW4K
PiA+IG9wdGltaXplIGludG8gYSBCIGluc3RydWN0aW9uIGluc3RlYWQgb2YgYSBCTCBpbnN0cnVj
dGlvbi4KPiA+Cj4gPiBUaGUgYmVsb3cgcGF0Y2ggYXZvaWRzIHRoYXQsIGFuZCB0aHVzIGZpeGVz
IHlvdXIgaXNzdWUsIHVzaW5nIGEgcHJldHR5Cj4gPiBiYWQgdHJpY2sgdGhhdCdzIG5vdCByZWFs
bHkgc3VpdGFibGUgZm9yIGJlaW5nIGNvbW1pdHRlZCBhbnl3aGVyZSwgYnV0Cj4gPiBpdCBpcyBw
ZXJoYXBzIGxlYWRpbmcgdXMgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbjoKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvc3JjL3NlbmQuYyBiL3NyYy9zZW5kLmMKPiA+IGluZGV4IDgyOGIwODZhLi40YmI2OTEx
ZiAxMDA2NDQKPiA+IC0tLSBhL3NyYy9zZW5kLmMKPiA+ICsrKyBiL3NyYy9zZW5kLmMKPiA+IEBA
IC0yMjEsNiArMjIxLDggQEAgc3RhdGljIGJvb2wgZW5jcnlwdF9wYWNrZXQoc3RydWN0IHNrX2J1
ZmYgKnNrYiwgc3RydWN0IG5vaXNlX2tleXBhaXIgKmtleXBhaXIsCj4gPiAgICAgIHNpbWRfY29u
dGV4dCk7Cj4gPiAgfQo+ID4KPiA+ICt2b2xhdGlsZSBjaGFyIGR1bW15Owo+ID4gKwo+ID4gIHZv
aWQgd2dfcGFja2V0X3NlbmRfa2VlcGFsaXZlKHN0cnVjdCB3Z19wZWVyICpwZWVyKQo+ID4gIHsK
PiA+ICAgc3RydWN0IHNrX2J1ZmYgKnNrYjsKPiA+IEBAIC0yNDAsNiArMjQyLDcgQEAgdm9pZCB3
Z19wYWNrZXRfc2VuZF9rZWVwYWxpdmUoc3RydWN0IHdnX3BlZXIgKnBlZXIpCj4gPiAgIH0KPiA+
Cj4gPiAgIHdnX3BhY2tldF9zZW5kX3N0YWdlZF9wYWNrZXRzKHBlZXIpOwo+ID4gKyBkdW1teSA9
IC0xOwo+ID4gIH0KPiA+Cj4gPiAgc3RhdGljIHZvaWQgd2dfcGFja2V0X2NyZWF0ZV9kYXRhX2Rv
bmUoc3RydWN0IHNrX2J1ZmYgKmZpcnN0LAo+Cj4gQSBiZXR0ZXIgZml4IHdpdGggbW9yZSBleHBs
YW5hdGlvbjogaXQgbG9va3MgbGlrZSB0aGUgaXNzdWUgZG9lc24ndCBoYXZlCj4gdG8gZG8gd2l0
aCB0aGUgbXVsdGlmaWxlIHRoaW5nIEkgcG9pbnRlZCBvdXQgYmVmb3JlLCBidXQganVzdCB0aGF0
IGdjYwo+IHNlZXMgaXQgY2FuIG9wdGltaXplIHRoZSB0YWlsIGNhbGwgaW50byBhIEIgaW5zdHJ1
Y3Rpb24sIHdoaWNoIHNlZW1zIHRvCj4gaGF2ZSBhIMKxMktCIHJhbmdlLCB3aGVyZWFzIEJMIGhh
cyBhIMKxNE1CIHJhbmdlLiBUaGUgc29sdXRpb24gaXMgdG8ganVzdAo+IG1vdmUgdGhlIGxvY2F0
aW9uIG9mIHRoZSBmdW5jdGlvbiBpbiB0aGF0IGZpbGUgdG8gYmUgY2xvc2VyIHRvIHRoZQo+IGRl
c3RpbmF0aW9uIG9mIHRoZSB0YWlsIGNhbGwuIEknbSBub3QgYSBiaWcgZmFuIG9mIHRoYXQgYW5k
IEknbSBzbGlnaHRseQo+IHdvcnJpZWQgZGF2ZW0gd2lsbCBuYWNrIGl0IGJlY2F1c2UgaXQgbWFr
ZXMgYmFja3BvcnRpbmcgaGFyZGVyIGZvciBhCj4gZmFpcmx5IHNwZWN1bGF0aXZlIGdhaW4gKGF0
IGxlYXN0LCBJIGhhdmVuJ3QgeWV0IHRha2VuIG1lYXN1cmVtZW50cywKPiB0aG91Z2ggSSBzdXBw
b3NlIEkgY291bGQpLiBUaGVyZSdzIGFsc28gdGhlIHF1ZXN0aW9uIG9mIC0gd2h5IGFyZSB3ZQo+
IGRvaW5nIGdvb2Z5IHJlb3JkZXJpbmcgdGhpbmdzIHRvIHRoZSBjb2RlIHRvIHdvcmsgYXJvdW5k
IGEgdG9vbGNoYWluCj4gYnVnPyBTaG91bGRuJ3Qgd2UgZml4IHRoZSB0b29sY2hhaW4/IFNvLCBJ
J2xsIGtlZXAgdGhpbmtpbmcuLi4KPgo+IGRpZmYgLS1naXQgYS9zcmMvc2VuZC5jIGIvc3JjL3Nl
bmQuYwo+IGluZGV4IDgyOGIwODZhLi5mNDRhZmY4ZCAxMDA2NDQKPiAtLS0gYS9zcmMvc2VuZC5j
Cj4gKysrIGIvc3JjL3NlbmQuYwo+IEBAIC0yMjEsMjcgKzIyMSw2IEBAIHN0YXRpYyBib29sIGVu
Y3J5cHRfcGFja2V0KHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBub2lzZV9rZXlwYWlyICpr
ZXlwYWlyLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNpbWRfY29udGV4dCk7Cj4gIH0KPgo+IC12b2lkIHdnX3BhY2tldF9zZW5kX2tlZXBhbGl2
ZShzdHJ1Y3Qgd2dfcGVlciAqcGVlcikKPiAtewo+IC0gICAgICAgc3RydWN0IHNrX2J1ZmYgKnNr
YjsKPiAtCj4gLSAgICAgICBpZiAoc2tiX3F1ZXVlX2VtcHR5KCZwZWVyLT5zdGFnZWRfcGFja2V0
X3F1ZXVlKSkgewo+IC0gICAgICAgICAgICAgICBza2IgPSBhbGxvY19za2IoREFUQV9QQUNLRVRf
SEVBRF9ST09NICsgTUVTU0FHRV9NSU5JTVVNX0xFTkdUSCwKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEdGUF9BVE9NSUMpOwo+IC0gICAgICAgICAgICAgICBpZiAodW5saWtlbHko
IXNrYikpCj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+IC0gICAgICAgICAgICAg
ICBza2JfcmVzZXJ2ZShza2IsIERBVEFfUEFDS0VUX0hFQURfUk9PTSk7Cj4gLSAgICAgICAgICAg
ICAgIHNrYi0+ZGV2ID0gcGVlci0+ZGV2aWNlLT5kZXY7Cj4gLSAgICAgICAgICAgICAgIFBBQ0tF
VF9DQihza2IpLT5tdHUgPSBza2ItPmRldi0+bXR1Owo+IC0gICAgICAgICAgICAgICBza2JfcXVl
dWVfdGFpbCgmcGVlci0+c3RhZ2VkX3BhY2tldF9xdWV1ZSwgc2tiKTsKPiAtICAgICAgICAgICAg
ICAgbmV0X2RiZ19yYXRlbGltaXRlZCgiJXM6IFNlbmRpbmcga2VlcGFsaXZlIHBhY2tldCB0byBw
ZWVyICVsbHUgKCVwSVNwZnNjKVxuIiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwZWVyLT5kZXZpY2UtPmRldi0+bmFtZSwgcGVlci0+aW50ZXJuYWxfaWQsCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnBlZXItPmVuZHBvaW50LmFkZHIpOwo+IC0g
ICAgICAgfQo+IC0KPiAtICAgICAgIHdnX3BhY2tldF9zZW5kX3N0YWdlZF9wYWNrZXRzKHBlZXIp
Owo+IC19Cj4gLQo+ICBzdGF0aWMgdm9pZCB3Z19wYWNrZXRfY3JlYXRlX2RhdGFfZG9uZShzdHJ1
Y3Qgc2tfYnVmZiAqZmlyc3QsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IHdnX3BlZXIgKnBlZXIpCj4gIHsKPiBAQCAtMzQ2LDYgKzMyNSwyNyBAQCBlcnI6
Cj4gICAgICAgICBrZnJlZV9za2JfbGlzdChmaXJzdCk7Cj4gIH0KPgo+ICt2b2lkIHdnX3BhY2tl
dF9zZW5kX2tlZXBhbGl2ZShzdHJ1Y3Qgd2dfcGVlciAqcGVlcikKPiArewo+ICsgICAgICAgc3Ry
dWN0IHNrX2J1ZmYgKnNrYjsKPiArCj4gKyAgICAgICBpZiAoc2tiX3F1ZXVlX2VtcHR5KCZwZWVy
LT5zdGFnZWRfcGFja2V0X3F1ZXVlKSkgewo+ICsgICAgICAgICAgICAgICBza2IgPSBhbGxvY19z
a2IoREFUQV9QQUNLRVRfSEVBRF9ST09NICsgTUVTU0FHRV9NSU5JTVVNX0xFTkdUSCwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdGUF9BVE9NSUMpOwo+ICsgICAgICAgICAgICAg
ICBpZiAodW5saWtlbHkoIXNrYikpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+
ICsgICAgICAgICAgICAgICBza2JfcmVzZXJ2ZShza2IsIERBVEFfUEFDS0VUX0hFQURfUk9PTSk7
Cj4gKyAgICAgICAgICAgICAgIHNrYi0+ZGV2ID0gcGVlci0+ZGV2aWNlLT5kZXY7Cj4gKyAgICAg
ICAgICAgICAgIFBBQ0tFVF9DQihza2IpLT5tdHUgPSBza2ItPmRldi0+bXR1Owo+ICsgICAgICAg
ICAgICAgICBza2JfcXVldWVfdGFpbCgmcGVlci0+c3RhZ2VkX3BhY2tldF9xdWV1ZSwgc2tiKTsK
PiArICAgICAgICAgICAgICAgbmV0X2RiZ19yYXRlbGltaXRlZCgiJXM6IFNlbmRpbmcga2VlcGFs
aXZlIHBhY2tldCB0byBwZWVyICVsbHUgKCVwSVNwZnNjKVxuIiwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBwZWVyLT5kZXZpY2UtPmRldi0+bmFtZSwgcGVlci0+aW50ZXJu
YWxfaWQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnBlZXItPmVuZHBv
aW50LmFkZHIpOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHdnX3BhY2tldF9zZW5kX3N0YWdl
ZF9wYWNrZXRzKHBlZXIpOwo+ICt9Cj4gKwo+ICB2b2lkIHdnX3BhY2tldF9wdXJnZV9zdGFnZWRf
cGFja2V0cyhzdHJ1Y3Qgd2dfcGVlciAqcGVlcikKPiAgewo+ICAgICAgICAgc3Bpbl9sb2NrX2Jo
KCZwZWVyLT5zdGFnZWRfcGFja2V0X3F1ZXVlLmxvY2spOwo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
