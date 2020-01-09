Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFA21350A2
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Jan 2020 01:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNfcwC6LdkkuHtKh60bRW5Zd6yISkIgAPkxiUqUHOV4=; b=enaqZrgkuJ2b23
	/vwivddN5bSSZ5eHPfjTaiGmUH8VZMGgrAObPpoGXBaqW2opGWZ+fXXYuR/5pAFlWoH2sGnxZOurQ
	WoJevrS2EYoxIJt4fke4hks/PNPs8c3ZO3FM2sQl91hKz2t4ZAj/ol+ZY1dz5sNHfs3LERKy8ldHV
	dtAfacQoM7/f2KvsKDquu1xMXiR20SWfNlpB4vUR0G1c2F8eHwHTnq+jIbStfEie7yIRjO/mPtMJS
	2nTtqV6XQK0m8i1/qSex39wGBFQktZnfdJfl06xSXfs1czLYy7uvrkqssBzPpWD/FBcUJ9i0HBdcP
	aNDjUUCl21XcKl2dOTag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipM0z-00053j-47; Thu, 09 Jan 2020 00:49:33 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipM0l-00053A-RH
 for openwrt-devel@lists.openwrt.org; Thu, 09 Jan 2020 00:49:23 +0000
Received: by mail-pj1-x1041.google.com with SMTP id kx11so355893pjb.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 16:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=H/by72nyZuL0WWYRgWdh8LU3bejDEqfQPRpQ68Bakaw=;
 b=XTjVgVeAJs1fWE65ttc2GWspZZRYnyTCHHYvxdCnEMqwjrQTg/6e8fy2/N4wYUCxUu
 /sAB7HE7jxj2W9svFiPSOonWswhp++I2eRbaebVsgptLX1LP3ryoFLXGZ5udRTIAOBZP
 pr7Gw2xSFpvTQUVUboxp5oomWkkLQjf8ms5Kz62gx4ACXrEJY9VYl3hdJHbTzExFmWld
 HLfxOMgA2394ghCKrBP/d7q4cFjqXN+CA4O/h/bkOOPBTFkz7GFL6RO2wyaQpRlpq/Km
 rhKMbRMrLdPpSR7RMdp6m2V4YCkQpG7LQb4SLBqkdqVwfSdwK9PeZVskGLm/l06fr6bx
 CA8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=H/by72nyZuL0WWYRgWdh8LU3bejDEqfQPRpQ68Bakaw=;
 b=KtvlEm80F3up7bKeOpx4z96hridEIk85MoibydsnqinGya23ts4jKHzKmKDNOpSE0K
 ewcu/Yrk2aJai6naOhXs+cjRnqznX4dtkgi7n3XD9NtiqtP7tWEqzM+pbEPxX/K5p/xT
 sNsfpha7rGhZhuBImdKzRQfQpAmYeDexvBkxZJM65HAgEkVu/7H7QPOPmugOFWIq+TRS
 byrQYIjZUJ8ckz+W0WTI5ehArPGLgSKpyFOC6a/0Z+bLB+GBrTkNtWbY3fkUdqiMKaKB
 fECdIO4VCXEOi7WI/SoXRJn3I3Yjo1oZEYhk7QdSod7Ow9lAt7EtZ9On731U/3eb7sPR
 L0bQ==
X-Gm-Message-State: APjAAAVUGg7bqsaze5fOB0bizXhgUmv7ElUl4UM6V3J4PH1n+Kj0rcS0
 iAdChMdS7fowAgh88s0kFt4=
X-Google-Smtp-Source: APXvYqwAX2+Jm8iFhE9OH+VLuQRonb/uO4kyZg1eu0ZSYzjOwCcXKA2Zl035TrOo9DUt+DuJjRFJVw==
X-Received: by 2002:a17:90a:8043:: with SMTP id
 e3mr1842439pjw.24.1578530958866; 
 Wed, 08 Jan 2020 16:49:18 -0800 (PST)
Received: from [192.168.0.147] ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j9sm4941807pff.6.2020.01.08.16.49.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 16:49:18 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 8 Jan 2020 16:49:17 -0800
Message-Id: <B4268294-80C0-49DD-8FEB-39550AC81E43@gmail.com>
References: <7f1044cb-cf12-d541-b78f-288adfb1ed02@hauke-m.de>
In-Reply-To: <7f1044cb-cf12-d541-b78f-288adfb1ed02@hauke-m.de>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_164919_879906_7B797A14 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] buildsystem: Activate PIE ASLR for
 some packages
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
Cc: daniel.engberg.lists@pyret.net, lynxis@fe80.eu, dave@taht.net,
 =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, openwrt-devel@lists.openwrt.org,
 nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cj4gT24gSmFuIDgsIDIwMjAsIGF0IDM6MTAgUE0sIEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVr
ZS1tLmRlPiB3cm90ZToKPiAKPiDvu79PbiAxLzgvMjAgNzoyNCBBTSwgUGV0ciDFoHRldGlhciB3
cm90ZToKPj4gSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IFsyMDIwLTAxLTA3IDIz
OjIxOjE5XToKPj4gCj4+IEhpLAo+PiAKPj4gdGhhbmtzIGZvciB5b3VyIHdvcmsuCj4+IAo+Pj4+
IEhhdWtlIE1laHJ0ZW5zICg2KToKPj4+PiAgYnVpbGRzeXN0ZW06IE1ha2UgUElFIEFTTFIgb3B0
aW9uIHRyaXN0YXRlCj4+Pj4gIGRuc21hc3E6IEFjdGl2YXRlIFBJRSBieSBkZWZhdWx0Cj4+Pj4g
IGRyb3BiZWFyOiBBY3RpdmF0ZSBQSUUgYnkgZGVmYXVsdAo+Pj4+ICBob3N0YXBkOiBBY3RpdmF0
ZSBQSUUgYnkgZGVmYXVsdAo+Pj4+ICB1aHR0cGQ6IEFjdGl2YXRlIFBJRSBieSBkZWZhdWx0Cj4+
Pj4gIGxhbnRpcTogQWxsb3cgUEtHX0FTTFJfUElFIGZvciBEU0wgYW5kIHZvaWNlIGRyaXZlcnMK
Pj4gCj4+IGp1c3Qgd29uZGVyaW5nLCBpZiB0aGVyZSBpcyBhbnkgcGFydGljdWxhciByZWFzb24g
Zm9yIGxlYXZpbmcgb2RoY3A2YyBhbmQKPj4gb2RoY3BkIG91dCBhcyB0aGlzIGFyZSBuZXR3b3Jr
IGV4cG9zZWQgc2VydmljZXMgYW5kIHJ1bm5pbmcgaW4gZGVmYXVsdAo+PiBpbnN0YWxsLgo+IAo+
IEkganVzdCBkaWRuJ3QgdGhvdWdodCBhYm91dCB0aGVtLiBXZSBjb3VsZCBqdXN0IGFkZCBhbiBl
eHRyYSBwYXRjaCB0bwo+IGFjdGl2YXRlIGl0IGZvciB0aGVtIHRvby4KPiAKPj4gVGhpbmtpbmcg
YWJvdXQgaXQgbm93LCB3ZSBzaG91bGQgcHJvYmFibHkgY29uc2lkZXIgdWJ1cywgcHJvY2QsIHJw
Y2QgYW5kCj4+IGNnaS1pbyAocGVyaGFwcyBtaXNzZWQgc29tZXRoaW5nKSB3aGljaCBtaWdodCBw
b3NzaWJseSBwcm9jZXNzIG1hbGljaW91cwo+PiBpbnB1dHMgYXMgd2VsbC4KPiAKPiBUaGVuIHdl
IGhhdmUgbW9yZSBvciBsZXNzIGV2ZXJ5dGhpbmcuIDstKQo+IAo+PiBCVFcgSSdtIHdvbmRlcmlu
ZyBob3cgZG9lcyB0aGlzIHdvcmsgd2l0aCB0aGUgc2hhcmVkIGxpYnJhcmllcywgbGlrZSBtdXNs
Cj4+IGxpYmMsIG9wZW5zc2wsIGxpYnVib3g/IERvbid0IHRoZXkgbmVlZCBQS0dfQVNMUl9QSUVf
UkVHVUxBUiBlbmFibGVkIGFzIHdlbGwKPj4gaW4gb3JkZXIgdG8gZ2V0IGBUQVJHRVRfTERGTEFH
UyArPSAkKEZQSUMpCj4+IC1zcGVjcz0kKElOQ0xVREVfRElSKS9oYXJkZW5lZC1sZC1waWUuc3Bl
Y3NgID8KPiAKPiBTaGFyZWQgbGlicmFyaWVzIGFyZSBhbHdheXMgbGlua2VkIHBvc2l0aW9uIGlu
ZGVwZW5kZW50IGFuZCB0aGVuIHRoZQo+IGtlcm5lbCBpcyBhbHJlYWR5IGxvYWRpbmcgdGhlbSB0
byByYW5kb20gYWRkcmVzcyBvZmZzZXRzLgo+IAo+Pj4gSSB3b3VsZCBsaWtlIHRvIGFwcGx5IHRo
ZXNlIHBhdGNoZXMgdG8gbWFzdGVyPwo+PiAKPj4gSSBkb24ndCBrbm93IGlmIHlvdSd2ZSBzb21l
dGhpbmcgbmV3ZXIgaW4geW91ciB0cmVlLCBqdXN0IGxvb2tlZCBhdCB5b3VyIGFzbHIKPj4gYnJh
bmNoIGluIHlvdXIgc3RhZ2luZyB0cmVlOgo+IAo+IFlvdSBjYW4gZmluZCB0aGUgbmV3ZXN0IHZl
cnNpb24gaGVyZToKPiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L3N0YWdpbmcv
aGF1a2UuZ2l0O2E9c2hvcnRsb2c7aD1yZWZzL2hlYWRzL2FzbHIKPiAKPj4gKyBkZWZhdWx0IFBL
R19BU0xSX1BJRV9OT05FIGlmICgoU01BTExfRkxBU0ggfHwgTE9XX01FTU9SWV9GT09UUFJJTlQp
ICYmICFTREspCj4+IAo+PiBOaWNlLCB0aGF0IHlvdSd2ZSBlbmFibGVkIHRoaXMgZm9yICFTTUFM
TF9GTEFTSCBkZXZpY2VzLiBCVFcgd2hhdCBpcyB0aGUKPj4gcmVhc29uIGZvciAhU0RLPyBUaGF0
IHdheSBiaW5hcnkvbGlicmFyeS4KPiAKPiBXaGVuIHNvbWV0aGluZyBpcyBidWlsZCBpbiB0aGUg
U0RLIEkgYWx3YXlzIHdhbnQgdG8gdXNlCj4gUEtHX0FTTFJfUElFX1JFR1VMQVIgYnkgZGVmYXVs
dC4gSW4gb3VyIGJ1aWxkIGluZnJhc3RydWN0dXJlIHdlIGJ1aWxkCj4gcGFja2FnZXMgY29tbW9u
IHRvIG11bHRpcGxlIHRhcmdldHMgaW4gdGhlIFNESyBhbmQgdGhlcmUgSSBhbHdheXMgd2FudAo+
IHRvIHVzZSBQS0dfQVNMUl9QSUVfUkVHVUxBUiBhcyBkZWZhdWx0IG9wdGlvbiB0byBhY3RpdmF0
ZSBBU0xSIHdoZW4gdGhlCj4gc2FtZSBwYWNrYWdlIGlzIHVzZWQgb24gYSB0aW55IGFuZCBhIG5v
cm1hbCB0YXJnZXQuIEkgaG9wZSBpdCB3aWxsIHdvcmsKPiBsaWtlIHRoaXMuIEkgd2FudCB0byBw
cmV2ZW50IHRoYXQgc29tZSB0aW55IHRhcmdldCBpcyB1c2VkIHRvIGJ1aWxkIHRoZQo+IGFkZGl0
aW9uYWwgcGFja2FnZXMgYW5kIHRoZW4gdGhpcyBnZXRzIGFjY2lkZW50YWxseSBkZWFjdGl2YXRl
ZC4KPiAKPj4+IEFyZSB0aGVyZSBhbnkgb2JqZWN0aW9ucyB0byB0aGlzPyBJIGFscmVhZHkgYWN0
aXZhdGVkIExUTyB0byByZWR1Y2UgdGhlCj4+PiBzaXplIGZvciBhbGwgdGhlc2UgY29tcG9uZW50
cyBhbmQgdGhlIGxhbnRpcSBwYXRjaCBpcyBhbHJlYWR5IGFwcGxpZWQuCj4+IAo+PiBJIGRvbid0
IGhhdmUgYW55IG9iamVjdGlvbnMsIEkgd2VsY29tZSB0aGlzIGFkZGl0aW9uYWwgaGFyZGVuaW5n
LiBXaGljaCBicmFuY2gKPj4gY2FuIEkgdXNlIGZvciBydW50aW1lIHRlc3Rpbmc/IEkgcGxhbiB0
byB0ZXN0IGl0IGFuZCBnaXZlIHlvdSBteSBBY2tlZC1ieS4KPiAKPiBUaGUgZGlzYWR2YW50YWdl
IGlzIHRoYXQgdGhlIHNpemUgaW5jcmVhc2VzLCBvdGhlcndpc2UgSSB3b3VsZCBhY3RpdmF0ZQo+
IGl0IGZvciBhbGwgYmluYXJpZXMuCj4gCj4gVGhpcyBpcyBvbmUgZXhhbXBsZSBmb3IgZHJvcGJl
YXI6Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gcm9vdEBPcGVuV3J0Oi8jIGNhdCAvcHJvYy8xMjAwL21h
cHMKPiA1NTYxZTAwMC01NTY0ZDAwMCByLXhwIDAwMDAwMDAwIGZlOjAwIDEwMjQgICAgICAgL3Vz
ci9zYmluL2Ryb3BiZWFyCj4gNTU2NWQwMDAtNTU2NWUwMDAgci14cCAwMDAyZjAwMCBmZTowMCAx
MDI0ICAgICAgIC91c3Ivc2Jpbi9kcm9wYmVhcgo+IDU1NjVlMDAwLTU1NjVmMDAwIHJ3eHAgMDAw
MzAwMDAgZmU6MDAgMTAyNCAgICAgICAvdXNyL3NiaW4vZHJvcGJlYXIKPiA3N2U4OTAwMC03N2Vh
YjAwMCByLXhwIDAwMDAwMDAwIGZlOjAwIDI4OCAgICAgICAgL2xpYi9saWJnY2Nfcy5zby4xCj4g
NzdlYWIwMDAtNzdlYWMwMDAgci14cCAwMDAxMjAwMCBmZTowMCAyODggICAgICAgIC9saWIvbGli
Z2NjX3Muc28uMQo+IDc3ZWFjMDAwLTc3ZWFkMDAwIHJ3eHAgMDAwMTMwMDAgZmU6MDAgMjg4ICAg
ICAgICAvbGliL2xpYmdjY19zLnNvLjEKPiA3N2VhZDAwMC03N2Y0NDAwMCByLXhwIDAwMDAwMDAw
IGZlOjAwIDI4NiAgICAgICAgL2xpYi9saWJjLnNvCj4gNzdmNTMwMDAtNzdmNTUwMDAgcnd4cCAw
MDA5NjAwMCBmZTowMCAyODYgICAgICAgIC9saWIvbGliYy5zbwo+IDc3ZjU1MDAwLTc3ZjU3MDAw
IHJ3eHAgMDAwMDAwMDAgMDA6MDAgMAo+IDdmYzk1MDAwLTdmY2I2MDAwIHJ3LXAgMDAwMDAwMDAg
MDA6MDAgMCAgICAgICAgICBbc3RhY2tdCj4gN2ZlZmMwMDAtN2ZlZmQwMDAgci14cCAwMDAwMDAw
MCAwMDowMCAwCj4gN2ZmNzAwMDAtN2ZmNzIwMDAgci0tcCAwMDAwMDAwMCAwMDowMCAwICAgICAg
ICAgIFt2dmFyXQo+IDdmZjcyMDAwLTdmZjczMDAwIHIteHAgMDAwMDAwMDAgMDA6MDAgMCAgICAg
ICAgICBbdmRzb10KPiByb290QE9wZW5XcnQ6LyMgL2V0Yy9pbml0LmQvZHJvcGJlYXIgcmVzdGFy
dAo+IHJvb3RAT3BlbldydDovIyBwcyB8Z3JlcCBkcm9wYmVhcgo+IDIyOTkgcm9vdCAgICAgIDEx
MDggUyAgICAvdXNyL3NiaW4vZHJvcGJlYXIgLUYgLVAKPiAvdmFyL3J1bi9kcm9wYmVhci4xLnBp
ZCAtcAo+IDIzMTUgcm9vdCAgICAgIDEyMTIgUyAgICBncmVwIGRyb3BiZWFyCj4gcm9vdEBPcGVu
V3J0Oi8jIGNhdCAvcHJvYy8yMjk5L21hcHMKPiA1NTU1NzAwMC01NTU4NjAwMCByLXhwIDAwMDAw
MDAwIGZlOjAwIDEwMjQgICAgICAgL3Vzci9zYmluL2Ryb3BiZWFyCj4gNTU1OTYwMDAtNTU1OTcw
MDAgci14cCAwMDAyZjAwMCBmZTowMCAxMDI0ICAgICAgIC91c3Ivc2Jpbi9kcm9wYmVhcgo+IDU1
NTk3MDAwLTU1NTk4MDAwIHJ3eHAgMDAwMzAwMDAgZmU6MDAgMTAyNCAgICAgICAvdXNyL3NiaW4v
ZHJvcGJlYXIKPiA3N2YxMjAwMC03N2YzNDAwMCByLXhwIDAwMDAwMDAwIGZlOjAwIDI4OCAgICAg
ICAgL2xpYi9saWJnY2Nfcy5zby4xCj4gNzdmMzQwMDAtNzdmMzUwMDAgci14cCAwMDAxMjAwMCBm
ZTowMCAyODggICAgICAgIC9saWIvbGliZ2NjX3Muc28uMQo+IDc3ZjM1MDAwLTc3ZjM2MDAwIHJ3
eHAgMDAwMTMwMDAgZmU6MDAgMjg4ICAgICAgICAvbGliL2xpYmdjY19zLnNvLjEKPiA3N2YzNjAw
MC03N2ZjZDAwMCByLXhwIDAwMDAwMDAwIGZlOjAwIDI4NiAgICAgICAgL2xpYi9saWJjLnNvCj4g
NzdmZGMwMDAtNzdmZGUwMDAgcnd4cCAwMDA5NjAwMCBmZTowMCAyODYgICAgICAgIC9saWIvbGli
Yy5zbwo+IDc3ZmRlMDAwLTc3ZmUwMDAwIHJ3eHAgMDAwMDAwMDAgMDA6MDAgMAo+IDdmY2JjMDAw
LTdmY2RkMDAwIHJ3LXAgMDAwMDAwMDAgMDA6MDAgMCAgICAgICAgICBbc3RhY2tdCj4gN2ZlZmMw
MDAtN2ZlZmQwMDAgci14cCAwMDAwMDAwMCAwMDowMCAwCj4gN2ZmNzMwMDAtN2ZmNzUwMDAgci0t
cCAwMDAwMDAwMCAwMDowMCAwICAgICAgICAgIFt2dmFyXQo+IDdmZjc1MDAwLTdmZjc2MDAwIHIt
eHAgMDAwMDAwMDAgMDA6MDAgMCAgICAgICAgICBbdmRzb10KPiByb290QE9wZW5XcnQ6LyMKPiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiAKPiBBbGwgc2VjdGlvbnMgYXJlIGxvYWRlZCB0byBkaWZmZXJlbnQg
YWRkcmVzc2VzIHRoZSBzZWNvbmQgdGltZSwgZXhjZXB0Cj4gN2ZlZmMwMDAgOy0pCllvdXNvbmcg
aGFzIGEgcGF0Y2ggdGhhdCBnZXRzIHJpZCBvZiB0aGF0LiBXaGF0IGhhcHBlbmVkIHRvIGl0Pwo+
IAo+IEhhdWtlCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
