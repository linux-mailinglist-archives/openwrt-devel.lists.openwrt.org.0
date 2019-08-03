Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A299B803E4
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 03:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7rv2Hsg8JYDKNjrFADwAerKqN8zPd9Osl3bpKdHmGA=; b=Wn+u1hfqVAQ2uO
	odpjEpLye62/wUCZawzPq5KTmBmyiAN0jEPuowhS45/kP+3Lkz02Rqyv5mOTbZ8J+D9YqGK2YB2ae
	ZWYLxOX4Cs8TWoFUMGyLZ5daWD81argE35x0F606imihQ6THu6vEFebxxZK5Mx+FFnW5B1yRE28g9
	8PipNRdyd6Qrzpi7+o616k8ksZ6y8dUqJoQfjgICnUiZ1lO7WnKR2BiMd0WMRMgWwnlj2cHpr+L9a
	6V6Wou17AH5xgcL6COuuaHAoyz4VYtabqnKJ6qALQFWDhM7RmCIKlxiUXSY6Gj4rreQzXDOkIoErj
	YYrsEakiK+PzaY2sskQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htjIx-0004hj-Bm; Sat, 03 Aug 2019 01:57:55 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htjIq-0004h8-46
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 01:57:49 +0000
Received: by mail-ot1-x342.google.com with SMTP id r21so74007936otq.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 18:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mQLFlhwhEaHxFKwGuVhSy0yzjwA+yzb3x9qs2MAWW84=;
 b=ESCC/goY/YAmS0J/aEkjGS/ctME7DppQ0IPkF7bAx7k/ZA5z6RyAUX4xoi7zox2/Ao
 4uF6loakjqr1M+ILdDjp7M0CxeAgHHguLZXoX70OH33ws7ii+5s918IFdhqePP6GtDU2
 KGgy5jWbcpR0JfexbOwRzDeCzs8YBkJDlt1DtCRqxJ9t7src4QhjVfdtANH0lMFtGLt+
 RDmh8EnpJ+b8cZGhzPkUVSsveFMuA6XPCjTw7o4ACM6dYmQr9Zkkv8rmWIitNn3h+c7Z
 Ky6CILqtz9GVbJRAZc32hkc5jF/Vh3rOYNlCoh+YEfmKEDShR1/FPBUUUMXxrIbkKRPA
 xtvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mQLFlhwhEaHxFKwGuVhSy0yzjwA+yzb3x9qs2MAWW84=;
 b=WnVTFPkvYneXhbo68zLsSYAWThn9Uu+1/3+BtzT67+miJRULlN1e9l1m3eze41phs3
 +jl5VkNLq0Bw3wIFZ9OaXXgS+0xH8+vpHTfVsC6RSQO6wk0oH+4XN4nfuW4pyX8Ekr93
 eMY4qQNrpZt9dktFXgoxVohEhFPiv6EA3f5lECDx7LeLorYxpL5ihSJMsv8afSxgGDEO
 sNxX5Lj81iWUmltXt2rNMchEPwUfkhiSoZ8yyXOqSEb2VCV38+Q0StH0/72c1PAeW03u
 kecULJWwyUU+uopIbIumFDVlW5vDXDwSGwbqP2/NMV94DvacPPQXMmOHk+3bVgoK++EE
 HkUg==
X-Gm-Message-State: APjAAAXzoYmvyvij2+SOZrvRgG8korUkEx95x3v4FENJuBvb/KCuXajC
 DhJ67Jz6tO0pQNUFg9cd4ewXDb5iJP2S5BJ87uM=
X-Google-Smtp-Source: APXvYqycKwDFkscFLetE7phXBGVahhMGB/ukkzddNO7o3gpyMf2ry1nGwTMdB4xu0RVBUKaqAm0p0J3mqQL2QJTCNrk=
X-Received: by 2002:a9d:201:: with SMTP id 1mr97215611otb.279.1564797464247;
 Fri, 02 Aug 2019 18:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
 <2cec2c33f72eb4cc8d33e0a18289d099@grosjo.net>
 <mailman.14120.1564793695.19300.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.14120.1564793695.19300.openwrt-devel@lists.openwrt.org>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 2 Aug 2019 18:57:33 -0700
Message-ID: <CAKxU2N9hwSx3w0SLfJQBH_GMyJUwKLNU-k7sgjCCnB1ZgHy0Gw@mail.gmail.com>
To: Joan Moreau <jom@grosjo.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_185748_172354_3EFD86E1 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
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

T24gRnJpLCBBdWcgMiwgMjAxOSBhdCA1OjU1IFBNIEpvYW4gTW9yZWF1IHZpYSBvcGVud3J0LWRl
dmVsCjxvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnPiB3cm90ZToKPgo+IFRoZSBzZW5k
ZXIgZG9tYWluIGhhcyBhIERNQVJDIFJlamVjdC9RdWFyYW50aW5lIHBvbGljeSB3aGljaCBkaXNh
bGxvd3MKPiBzZW5kaW5nIG1haWxpbmcgbGlzdCBtZXNzYWdlcyB1c2luZyB0aGUgb3JpZ2luYWwg
IkZyb20iIGhlYWRlci4KPgo+IFRvIG1pdGlnYXRlIHRoaXMgcHJvYmxlbSwgdGhlIG9yaWdpbmFs
IG1lc3NhZ2UgaGFzIGJlZW4gd3JhcHBlZAo+IGF1dG9tYXRpY2FsbHkgYnkgdGhlIG1haWxpbmcg
bGlzdCBzb2Z0d2FyZS4KPgo+Cj4gLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0t
LS0tCj4gRnJvbTogSm9hbiBNb3JlYXUgPGpvbUBncm9zam8ubmV0Pgo+IFRvOiAiUGV0ciDFoHRl
dGlhciIgPHluZXp6QHRydWUuY3o+Cj4gQ2M6IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiBCY2M6Cj4gRGF0ZTogU2F0LCAwMyBBdWcgMjAxOSAwODo1NDo0NSArMDgwMAo+IFN1Ympl
Y3Q6IFJlOiBbT3BlbldydC1EZXZlbF0gcGFja2FnZSBtdDc2IGZhaWxzIHRvIGNvbXBpbGUgdW5k
ZXIgY2VydGFpbiBjb25maWd1cmF0aW9uIFtXYXM6IENvbXBpbGF0aW9uIGVycm9yIG9uIG1hc3Rl
ciAvIG10NzYyMF0KPgo+IEluIGFuIGF0dGVtcHQgdG8gZm9yY2UgTFpPIHdpdGggSkZGUzIsIEkg
Y2xpY2tlZCBvbiAibWtzcXVhc2giIGluIG1lbnVjb25maWcuCj4KPgo+IEkgcmVhY2ggdGhlIGZv
bGx3b2luZyBlcnJvcgo+Cj4gbWlwc2VsLW9wZW53cnQtbGludXgtbXVzbC1nY2MgLU9zIC1waXBl
IC1tbm8tYnJhbmNoLWxpa2VseSAtbWlwczMycjIgLW10dW5lPTI0a2MgLWZuby1jYWxsZXItc2F2
ZXMgLWZuby1wbHQgLWZob25vdXItY29wdHMgLVduby1lcnJvcj11bnVzZWQtYnV0LXNldC12YXJp
YWJsZSAtV25vLWVycm9yPXVudXNlZC1yZXN1bHQgLW1zb2Z0LWZsb2F0IC1taXBzMTYgLW1pbnRl
cmxpbmstbWlwczE2IC1pcmVtYXAvdXNyL3NyYy9vcGVud3J0LzRnL2J1aWxkX2Rpci90YXJnZXQt
bWlwc2VsXzI0a2NfbXVzbC9zcXVhc2hmcy10b29scy00LjM6c3F1YXNoZnMtdG9vbHMtNC4zIC1X
Zm9ybWF0IC1XZXJyb3I9Zm9ybWF0LXNlY3VyaXR5IC1mc3RhY2stcHJvdGVjdG9yIC1EX0ZPUlRJ
RllfU09VUkNFPTEgLVdsLC16LG5vdyAtV2wsLXoscmVscm8gLUkvdXNyL3NyYy9vcGVud3J0LzRn
L3N0YWdpbmdfZGlyL3RhcmdldC1taXBzZWxfMjRrY19tdXNsL3Vzci9pbmNsdWRlIC1JL3Vzci9z
cmMvb3BlbndydC80Zy9zdGFnaW5nX2Rpci90YXJnZXQtbWlwc2VsXzI0a2NfbXVzbC9pbmNsdWRl
IC1JL3Vzci9zcmMvb3BlbndydC80Zy9zdGFnaW5nX2Rpci90b29sY2hhaW4tbWlwc2VsXzI0a2Nf
Z2NjLTcuNC4wX211c2wvdXNyL2luY2x1ZGUgLUkvdXNyL3NyYy9vcGVud3J0LzRnL3N0YWdpbmdf
ZGlyL3Rvb2xjaGFpbi1taXBzZWxfMjRrY19nY2MtNy40LjBfbXVzbC9pbmNsdWRlL2ZvcnRpZnkg
LUkvdXNyL3NyYy9vcGVud3J0LzRnL3N0YWdpbmdfZGlyL3Rvb2xjaGFpbi1taXBzZWxfMjRrY19n
Y2MtNy40LjBfbXVzbC9pbmNsdWRlIC1JLiAtRF9GSUxFX09GRlNFVF9CSVRTPTY0IC1EX0xBUkdF
RklMRV9TT1VSQ0UgLURfR05VX1NPVVJDRSAtRENPTVBfREVGQVVMVD1cImd6aXBcIiAtV2FsbCAt
REdaSVBfU1VQUE9SVCAtRFhaX1NVUFBPUlQgLURMWk9fU1VQUE9SVCAtRExaNF9TVVBQT1JUIC1j
IC1vIG1rc3F1YXNoZnMubyBta3NxdWFzaGZzLmMKPiBta3NxdWFzaGZzLmM6IEluIGZ1bmN0aW9u
ICdjcmVhdGVfaW5vZGUnOgo+IG1rc3F1YXNoZnMuYzo5OTY6MjQ6IGVycm9yOiBjYWxsZWQgb2Jq
ZWN0ICdtYWpvcicgaXMgbm90IGEgZnVuY3Rpb24gb3IgZnVuY3Rpb24gcG9pbnRlcgo+IHVuc2ln
bmVkIGludCBtYWpvciA9IG1ham9yKGJ1Zi0+c3RfcmRldik7Cj4gXn5+fn4KPiBta3NxdWFzaGZz
LmM6OTk2OjE2OiBub3RlOiBkZWNsYXJlZCBoZXJlCj4gdW5zaWduZWQgaW50IG1ham9yID0gbWFq
b3IoYnVmLT5zdF9yZGV2KTsKPiBefn5+fgo+Cj4KPiBTb21ldGhpbmcgaXMgdmVyeSBicm9rZW4g
aW4gbXQ3NgpUaGF0IGVycm9yIGlzIHJlbGF0ZWQgdG8gc3F1YXNoZnMtdG9vbHMsIG5vdCBtdDc2
OgpodHRwczovL2Rvd25sb2Fkcy5vcGVud3J0Lm9yZy9zbmFwc2hvdHMvZmFpbGxvZ3MvbWlwc18y
NGtjL3BhY2thZ2VzL3NxdWFzaGZzLXRvb2xzL2NvbXBpbGUudHh0Cj4KPgo+Cj4KPgo+Cj4gT24g
MjAxOS0wOC0wMiAyMzoxMiwgSm9hbiBNb3JlYXUgd3JvdGU6Cj4KPiBBZGRpdGlvbmFsbHksIEkg
Z2V0IHRoZSBmb2xsb3dpbmcgZXJyb3IgaW4gdGhlIGltYWdlIGdlbmVyYXRlZCAobWFzdGVyKSB3
aXRob3V0IHRoZSBkZWJ1Z2ZzIG9wdGlvbiB0aGVuIHRvIGFsbG93IGNvbXBpbGF0aW9uCj4KPgo+
IFsgOC45MzYyNDddIGpmZnMyOiBFcnJvcjogdW5rbm93biBjb21wcmVzc29yICJ6bGliIgo+IFsg
OC45NDE5MzldIG1vdW50X3Jvb3Q6IGZhaWxlZCB0byBtb3VudCAtdCBqZmZzMiAvZGV2L210ZGJs
b2NrNiAvdG1wL292ZXJsYXk6IEludmFsaWQgYXJndW1lbnQKPiBbIDguOTUxMDMzXSBtb3VudF9y
b290OiBvdmVybGF5IGZpbGVzeXN0ZW0gaGFzIG5vdCBiZWVuIGZ1bGx5IGluaXRpYWxpemVkIHll
dAo+IFsgOC45NTg5NzldIG1vdW50X3Jvb3Q6IHN3aXRjaGluZyB0byBqZmZzMiBvdmVybGF5Cj4g
WyA4Ljk2NDExNF0gbW91bnRfcm9vdDogc3dpdGNoaW5nIHRvIGpmZnMyIGZhaWxlZCAtIGZhbGxi
YWNrIHRvIHJhbW92ZXJsYXkKPgo+Cj4KPgo+IE9uIDIwMTktMDgtMDIgMjE6MzcsIEpvYW4gTW9y
ZWF1IHdyb3RlOgo+Cj4gUmVtb3ZpbmcgImRlYnVnIGZzIiBpbiBjb21waWxhdGlvbiBvcHRpb25z
IHJlbW92ZXMgdGhlIHByb2JsZW0uCj4KPiBTbyB0aGVyZSBpcyBzb21ldGhpbmcgdmVyeSBhd2t3
YXJkIGluIHRoZSBNYWtlZmlsZQo+Cj4KPgo+Cj4KPiBPbiAyMDE5LTA4LTAyIDIwOjI4LCBKb2Fu
IE1vcmVhdSB3cm90ZToKPgo+IGF0dGFjaGVkCj4KPgo+Cj4KPiBPbiAyMDE5LTA4LTAyIDE4OjM2
LCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+Cj4gSm9hbiBNb3JlYXUgdmlhIG9wZW53cnQtZGV2ZWwg
PG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+IFsyMDE5LTA4LTAyIDA3OjU2OjQxXToK
Pgo+IEhlbGxvLAo+Cj4gSSByZWFjaCB0aGUgZm9sbG93aW5nIGVycm9yIHdoaWxlIGNvbXBpbGlu
ZyBteSBNVDc2MjAvWkJUODI2LTE2TSBvbgo+IG1hc3RlciAobm8gZXJyb3Igb24gMTguMDYpIDoK
Pgo+IENDIFtNXQo+IC91c3Ivc3JjL29wZW53cnQvNGcvYnVpbGRfZGlyL3RhcmdldC1taXBzZWxf
MjRrY19tdXNsL2xpbnV4LXJhbWlwc19tdDc2MjAvbXQ3Ni0yMDE5LTA3LTIyLTc1NjU2YTQ1L210
NzYwMy9wY2kubwo+IDxjb21tYW5kLWxpbmU+OjA6Mzc6IGVycm9yOiByZWRlY2xhcmF0aW9uIG9m
IGVudW1lcmF0b3IKPiAnSUVFRTgwMjExX0hXX1JFUE9SVFNfVFhfQUNLX1NUQVRVUycKPiA8Y29t
bWFuZC1saW5lPjowOjM3OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvCj4gJ0lFRUU4MDIx
MV9IV19UWF9TVEFUVVNfTk9fQU1QRFVfTEVOJwo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbQo+IC91
c3Ivc3JjL29wZW53cnQvNGcvYnVpbGRfZGlyL3RhcmdldC1taXBzZWxfMjRrY19tdXNsL2xpbnV4
LXJhbWlwc19tdDc2MjAvbXQ3Ni0yMDE5LTA3LTIyLTc1NjU2YTQ1L210NzYwMy8uLi9tdDc2Lmg6
Mjc6MCwKPiBmcm9tCj4gL3Vzci9zcmMvb3BlbndydC80Zy9idWlsZF9kaXIvdGFyZ2V0LW1pcHNl
bF8yNGtjX211c2wvbGludXgtcmFtaXBzX210NzYyMC9tdDc2LTIwMTktMDctMjItNzU2NTZhNDUv
bXQ3NjAzL210NzYwMy5oOjgsCj4gZnJvbQo+IC91c3Ivc3JjL29wZW53cnQvNGcvYnVpbGRfZGly
L3RhcmdldC1taXBzZWxfMjRrY19tdXNsL2xpbnV4LXJhbWlwc19tdDc2MjAvbXQ3Ni0yMDE5LTA3
LTIyLTc1NjU2YTQ1L210NzYwMy9wY2kuYzo3Ogo+IC91c3Ivc3JjL29wZW53cnQvNGcvc3RhZ2lu
Z19kaXIvdGFyZ2V0LW1pcHNlbF8yNGtjX211c2wvdXNyL2luY2x1ZGUvbWFjODAyMTEvbmV0L21h
YzgwMjExLmg6MjI5MzoyOgo+IG5vdGU6IHByZXZpb3VzIGRlZmluaXRpb24gb2YgJ0lFRUU4MDIx
MV9IV19SRVBPUlRTX1RYX0FDS19TVEFUVVMnIHdhcwo+IGhlcmUKPiBJRUVFODAyMTFfSFdfUkVQ
T1JUU19UWF9BQ0tfU1RBVFVTLAo+IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4K
PiBtYWtlWzZdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MzI3Ogo+IC91c3Ivc3JjL29w
ZW53cnQvNGcvYnVpbGRfZGlyL3RhcmdldC1taXBzZWxfMjRrY19tdXNsL2xpbnV4LXJhbWlwc19t
dDc2MjAvbXQ3Ni0yMDE5LTA3LTIyLTc1NjU2YTQ1L210NzYwMy9wY2kub10KPiBFcnJvciAxCj4g
bWFrZVs1XTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjU4NToKPiAvdXNyL3NyYy9vcGVu
d3J0LzRnL2J1aWxkX2Rpci90YXJnZXQtbWlwc2VsXzI0a2NfbXVzbC9saW51eC1yYW1pcHNfbXQ3
NjIwL210NzYtMjAxOS0wNy0yMi03NTY1NmE0NS9tdDc2MDNdCj4gRXJyb3IgMgo+IG1ha2VbNF06
ICoqKiBbTWFrZWZpbGU6MTUzMjoKPiBfbW9kdWxlXy91c3Ivc3JjL29wZW53cnQvNGcvYnVpbGRf
ZGlyL3RhcmdldC1taXBzZWxfMjRrY19tdXNsL2xpbnV4LXJhbWlwc19tdDc2MjAvbXQ3Ni0yMDE5
LTA3LTIyLTc1NjU2YTQ1XQo+IEVycm9yIDIKPgo+IENhbiB5b3UgaGVscCA/Cj4KPgo+IHRoZSBw
cm9ibGVtIGlzIHByb2JhYmx5IGluIHRoaXMgY29tcGlsZSBjaGVja1sxXSwgc28gcGxlYXNlIGRv
IGZvbGxvd2luZzoKPgo+ICBtYWtlIHBhY2thZ2UvbXQ3Ni97Y2xlYW4scHJlcGFyZX0KPiAgc2Vk
IC1pICdzO1RNUCI7VE1QIiAyPiAkKFRPUERJUikvbWVoLmxvZzsnIGJ1aWxkX2Rpci90YXJnZXQt
bWlwc2VsXzI0a2NfbXVzbC9saW51eC1yYW1pcHNfbXQ3NjIwL210NzYtMjAxOS0wNy0yMi03NTY1
NmE0NS9tdDc2MDMvTWFrZWZpbGUKPiAgbWFrZSBwYWNrYWdlL210NzYvY29tcGlsZQo+ICBzY3Jp
cHRzL2RpZmZjb25maWcuc2ggPj4gbWVoLmxvZzsgZ3ppcCBtZWgubG9nCj4KPiBhbmQgc2VuZCBt
ZWgubG9nLmd6IGZpbGUgYXMgYXR0YWNobWVudC4KPgo+IDEuIGh0dHBzOi8vZ2l0aHViLmNvbS9v
cGVud3J0L210NzYvYmxvYi9tYXN0ZXIvbXQ3NjAzL01ha2VmaWxlI0w3Cj4KPiAtLSB5bmV6ego+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
