Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F81A07E0
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 18:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jA+04elsrdu70xBfZ6rZZP69WzGJEF2+/3IM1IGGJcQ=; b=ZbnXBC/gGj+Nue
	5Ngye7i9eisufWJP85Q1ipan5xDZknqWvF2tcMbmLQK8rlIanEgslNTI9bagna+JAKGKhiZra2Shx
	2z3Q7hEB3SFq4AdyC6AphxmE1iUofCg1H/CIhC1/25hxPsQxZTe5GZ7RWGxmutzlU7EZWYUg6WxsN
	TVGz1v2KKC7lZAOMcjolpOGqfwtdhpJ5yH8b0ukA++RlY3dz1vsUrYRXXdBJi4NS8SQQb/ayrVsQR
	RBspLf8pE+yIDuZVd5jf52q8jbB2CYmokW3Ksc4mszCKI0y0dtWJyKfI+GHKet/PplkpIi6jC4osH
	RBRG0KfxByEHXJzS87MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31Bx-0002NC-OE; Wed, 28 Aug 2019 16:53:05 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31Bo-0002Mp-5f
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 16:52:58 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x7SGqddq021307
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 28 Aug 2019 18:52:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1567011159; bh=kf4P8bE8x8esHpdoFzvaz9LobqqdhTwhyH9fw5hC9EU=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=labrZZrANLF2g3BFXh6JDL+/u98wuHGF9XNpwK+qKEuejLd1Sl9NOK0+S/gQSSAcT
 JsstKZAwZ8gXTaxv8PsVyuogVzYgqV9OO2q1YqCC8U7zLWLta29h7++S7lftHW4+rt
 UPCArz5qaBad9R7ZlBmYLnmEHycznK3zAImXDBV0=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1i31BW-0007e3-No; Wed, 28 Aug 2019 18:52:38 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Enrico Mioso <mrkiko.rs@gmail.com>
Organization: m
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
 <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
 <alpine.LNX.2.21.99999.352.1908281820530.3996@localhost.localdomain>
Date: Wed, 28 Aug 2019 18:52:38 +0200
In-Reply-To: <alpine.LNX.2.21.99999.352.1908281820530.3996@localhost.localdomain>
 (Enrico Mioso's message of "Wed, 28 Aug 2019 18:21:35 +0200 (CEST)")
Message-ID: <878srdp6zt.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_095256_727728_7F0E501E 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
 (Fritz_Box_HW198))
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RW5yaWNvIE1pb3NvIDxtcmtpa28ucnNAZ21haWwuY29tPiB3cml0ZXM6Cgo+IEkgYW0gc3RpbGwg
dHJ5aW5nIHRvIHBvcnQgYSBGUklUWiFCT1gzMjcyIGRldmljZSB0byBPcGVuV1J0Lgo+IEkgdHJp
ZWQgdG8gZ3JhYiBhcyBtdWNoIGluZm9ybWF0aW9ucyBhcyBJIGNvdWxkLCBidXQgSSBhbSBhcnJp
dmluZyB0byB0aGUgY29uY2x1c2lvbiBJIGhvdWxkIGJlIGRvaW5nIHNvbWV0aGluZyByZWFsbHkg
d3JvbmcuCj4KPiBGaXJzdCBvZiBhbGwsIHRoZSBrZXJuZWwgcGFuaWNzIGR1ZSB0byBhIGRhdGEg
YWJvcnQgYXQKPiBsaW51eC00LjE5LjY2L2FyY2gvbWlwcy9sYW50aXEveHdheS9zeXNjdHJsLmMs
IGxpbmUgNDc4Cj4gLyogbWFrZSBzdXJlIHRvIHVucHJvdGVjdCB0aGUgbWVtb3J5IHJlZ2lvbiB3
aGVyZSBmbGFzaCBpcyBsb2NhdGVkICovCj4gbHRxX2VidV93MzIobHRxX2VidV9yMzIoTFRRX0VC
VV9CVVNDT04wKSAmIH5FQlVfV1JESVMsIExUUV9FQlVfQlVTQ09OMCk7Ci4uCj4gW1NZU1RFTTpd
IEFSMTAgb24gNTAwTUh6LzI1ME1Iei8yNTBNSHoKPgo+IC4uCj4gRXZhX0FWTSA+Cj4KPgo+Cj4K
Pgo+Cj4KPiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLlsgICAgMC4wMDAwMDBdIExpbnV4
IHZlcnNpb24gNC4xOS42NiAobXJraWtvQG1TdGF0aW9uKSAoZ2NjIHZlcnNpb24gNy40LjAgKE9w
ZW5XcnQgR0NDIDcuNC4wIHIxMDg2My1lMWRjZmUwMmIyKSkgIzAgU01QIE1vbiBBdWcgMjYgMTY6
MjE6MTMgMjAxOQo+IFsgICAgMC4wMDAwMDBdIFNvQzogeFJYMzAwIHJldiAxLjIKCgpSaWdodCwg
c28gdGhpcyBpcyBBUjEwL3hSWDMwMC4gQmVlbiB0aGVyZSwgdHJ5aW5nIHRvIGdldCBhIEQtTGlu
awpEV1ItOTU2IHJ1bm5pbmcsIGFuZCBnYXZlIHVwIHdpdGhvdXQgZ2V0dGluZyB0aGUgVC1TaGly
dCA7LSkKCkkgYmVsaWV2ZSB0aGUgcHJvYmxlbSB5b3UgYXJlIGhpdHRpbmcgcmlnaHQgbm93IGlz
IGNhdXNlZCBieSB3cm9uZwphZGRyZXNzIGZvciB0aGUgRUJVLiAgSXQgaXMgbm90IGF0IDB4MUUx
MDUzMDAgbGlrZSBmb3IgdGhlIFZSOSBldGMsIGJ1dAphdCAweDE2MDAwMDAwIG9uIHRoZSBBUjEw
LgoKU28gY2hhbmdlIHRoaXM6CgogCQllYnUwOiBlYnVAZTEwNTMwMCB7CiAJCQljb21wYXRpYmxl
ID0gImxhbnRpcSxlYnUteHdheSI7CiAJCQlyZWcgPSA8MHhlMTA1MzAwIDB4MTAwPjsKIAkJfTsK
CmludG8KCiAJCWVidTA6IGVidUA2MDAwMDAwIHsKIAkJCWNvbXBhdGlibGUgPSAibGFudGlxLGVi
dS14d2F5IjsKIAkJCXJlZyA9IDwweDYwMDAwMDAgMHgxMDA+OwogCQl9OwoKCkkgd2FzIHN0dWNr
IHRoZSBzYW1lIHBsYWNlIGZvciBxdWl0ZSBzb21lIHRpbWUuLi4uCgpJIHB1c2hlZCBteSBhYmFu
ZG9uZWQgRFdSLTk1NiBicmFuY2ggaGVyZSBub3c6Cmh0dHBzOi8vZ2l0aHViLmNvbS9ibW9yay9P
cGVuV3J0L3RyZWUvZHdyLTk1Ni13aXAKaW4gY2FzZSBpdCBpcyBvZiBhbnkgdXNlIHRvIHlvdS4K
Ck5vdGUgdGhhdCB0aGlzIGJyYW5jaCBpcyBhIHRlcnJpYmxlIG1lc3Mgb2YgV29yay1pbi1Qcm9n
cmVzcywgbWVhbnQgZm9yCm15IGV5ZXMgb25seS4gIEFuZCBldmVuIEkgY2FuJ3QgbWFrZSBtdWNo
IHNlbnNlIG91dCBvZiBpdCBhbnltb3JlLiAgU28KeW91IG1pZ2h0IGJlIGJldHRlciBvZmYganVz
dCBpZ25vcmluZyBpdC4gIFlvdXIgY2FsbC4KCgoKCkJqw7hybgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
