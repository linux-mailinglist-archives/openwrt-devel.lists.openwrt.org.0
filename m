Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D723A1B4EB6
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 22:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w4I56LrNTjJ7hjXC3MUH/RbvNnKVq0hzIshOtfnrjWU=; b=rEAC4qn4lpbao5
	cAdiJKtjjd80frZfchZ+oAFKXW1ihzro9xQJXDe1zpOqG1oNlgOT2gr1RbH5SDAxZYh2DzIp5vBuU
	W8Ma5MEL8mWMkI4SDOYzFf8QGrUaUVb72Rq4yTuFUurXJK9nscA1Eie4g6odXxcFT8KLw+NDiXAAA
	+GrgHS8ZBnETSodZnr83MKgbM0wiRSLLMc9I2YYMpwk+r05Wag+6V/knFWii0d16OT31b+s3p4sty
	5HeeGVeHYn1pfHfYLW/0IKewNnCZvBdN3uiDeGWkgxbur05xq9Ua7n0VXQv8/uTub4o1Ykn8pq897
	H4MsyHzVD7FGTzq+sc6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRMSw-0002NU-5k; Wed, 22 Apr 2020 20:59:30 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRMSX-00029A-Sa
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 20:59:09 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id 03MKwvMk023110
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Wed, 22 Apr 2020 22:58:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1587589138; bh=R0S6yX4nVJyHdol6dQvOoALxUV3jUdWEa0sDYWVahjM=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=CbXq7+V1XEs5I03KC9RyrADMcif8sJvdfSZON4SpFQjKUX1oA4VB8Y2t5IfDtcQWe
 xpke41vKGeyhBBjk+n1mtn1WFSfGOGkd2a7QOZw6/f0Ats+NF/1/PO2Jz4cTHRVpsi
 a27i6u7RQ+1VAYEOxUX0ey1FANNlUrdFGF0Xt/Xk=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id 03MKwvxP023104;
 Wed, 22 Apr 2020 22:58:57 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 Apr 2020 22:58:49 +0200
Message-Id: <20200422205852.22847-1-bjorn@mork.no>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_135906_451735_A1C004BA 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFC 0/3] PoC for per-image package sets
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
Cc: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlc2UgcGF0Y2hlcyBjYW4gYWxzbyBiZSBmb3VuZCBpbiBhIGJyYW5jaCBoZXJlOgpodHRwczov
L2dpdGh1Yi5jb20vYm1vcmsvb3BlbndydC90cmVlL2ltYWdlLXBhY2thZ2VzZXRzCgpEdW1waW5n
IHRoaXMgYXMtaXMgZm9yIGRpc2N1c3Npb24uICBOb3Qgc3VyZSBJJ20gY2FwYWJsZSBvZiwgb3IK
d2lsbCBoYXZlIHRpbWUgdG8sIGZpbmlzaCBpdC4gIEJ1dCBJIGFtIGhvcGluZyBpdCBpcyBhIHVz
ZWZ1bApzdGFydCBpZiBzb21lb25lIGVsc2Ugd2FudHMgdG8gZ2l2ZSBpdCBhIHRyeS4gIElmIG5v
dCwgdGhlbiBJCmd1ZXNzIGl0IGlzbid0IGEgdXNlZnVsIGVub3VnaCBmZWF0dXJlIGFmdGVyIGFs
bC4KClRoZSBzdGF0ZSBvZiB0aGlzIGlzIHNvcnQtb2Ygd29ya2luZyBmb3IgbWUsIGJ1dCBkZWZp
bml0ZWx5Cm5vdCBjb21wbGV0ZSBhbmQgd29ya2luZyBmb3IgYWxsIGRpZmZlcmVudCBidWlsZCBz
Y2VuYXJpb3MuCkkgaGF2ZSBub3QgdGVzdGVkIElCIG9yIFBFUl9UQVJHRVRfUk9PVEZTIGJ1aWxk
cy4gIGxlZ2FjeS1kZXZpY2VzCmhhdmVuJ3QgYmVlbiB1cGRhdGVkIGF0IGFsbCBhbmQgYXJlIHRo
ZXJlZm9yZSBicm9rZW4uIGV0Yy4KClRvIHJlY2FwIHRoZSB1c2UgY2FzZTogIEkgaGF2ZSBhIGRl
dmljZSB3aGVyZSB0aGUgdmVuZG9yIHRmdHAKc2VydmVyIGxpbWl0cyB0aGUgc2l6ZSBvZiB0aGUg
aW5pdGlhbCBPcGVuV3J0IGltYWdlIHdlIGNhbiAKdXBsb2FkLiBBbiBpbml0cmFtZnMgaW1hZ2Ug
aXMgcHJlZmVycmFibGUgZHVlIHRvIHRoZSBhYmlsaXR5IHRvCmJvb3QgZnJvbSBlaXRoZXIgb2Yg
dGhlIGR1YWwgcGFydGl0aW9ucy4KCkZvciB0aGlzIHJlYXNvbiBJIHdhbnRlZCB0byBidWlsZCBh
biBpbml0cmFtZnMgd2l0aCBhIGxpbWl0ZWQKc2V0IG9mIHBhY2thZ2VzLCB3aXRob3V0IGhhdmlu
ZyB0byByZWR1Y2UgdGhlIGRlZmF1bHQgZGV2aWNlCnBhY2thZ2VzIGZvciB0aGUgb3RoZXIgaW1h
Z2VzLgoKSSBoYXZlIG5vdGljZWQgdGhhdCB0aGlzIHVzZSBjYXNlIGlzIG5vdCB1bmlxdWUuICBX
ZSBoYXZlIGZvcgpleGFtcGxlIEJ1aWxkL3VibnQtZXJ4LWZhY3RvcnktaW1hZ2UgaW4gbXQ3NjIx
Lm1rLCBhdHRlbXB0aW5nCnRvIGJ1aWxkIGFuIGluaXRyYW1mcyBiYXNlZCBpbWFnZSB3aGljaCB3
aWxsIGZpdCB3aXRoaW4KJChLRVJORUxfU0laRSksIHdoaWNoIGlzIGEgdGlueSAzTUIuICBUaGlz
IGlzIG9idmlvdXNseSBmdXRpbGUKYW5kIHRoZXJlIGlzIHRoZXJlZm9yZSBubyBzdWNoIGltYWdl
IG9uIGRvd25sb2Fkcy5vcGVud3J0Lm9yZy4KWW91IGNhbiBidWlsZCBvbmUgeW91cnNlbGYgYnkg
Y2FyZWZ1bGx5IHJlbW92aW5nIHBhY2thZ2VzLCBidXQKaXQgd291bGQgYmUgbmljZSBpZiB3ZSBj
b3VsZCBsZXQgdGhlIGJ1aWxkYm90cyBwcm9kdWNlIG9uZSB0b28uCgpBbnl3YXksIGxvb2sgYXQg
dGhlIGNvZGUgYW5kIHNlZSBpZiBteSBpZGVhcyBjYW4gYmUgdXNlZC4gSSdsbAphZG1pdCB0aGF0
IEknbSBubyBtYWtlIEd1cnUuLi4KClRoZSBmaXJzdCBwYXRjaCBzaW1wbGlmaWVzIHRoZSBjdXJy
ZW50IGluaXRyYW1mcyBwcm9jZXNzLCBhbmQKYXZvaWRzIGNvcHlpbmcgdGhlIHNwZWNpYWwgaW5p
dHJhbWZzIC9pbml0IGludG8gdGhlIHNoYXJlZApUQVJHRVRfRElSLiBJdCBzdGlsbCBtYWtlcyBh
IGNvcHkgb2YgdGhlIGZpbGUgdG8gYmUgYWJsZSB0bwpzZXQgdGhlIHRpbWVzdGFtcCB0aG91Z2gu
ICBJIGJlbGlldmUgdGhpcyBwYXRjaCBpcyB1c2VmdWwgYnkKaXRzZWxmLCBhbmQgSSBkb24ndCB0
aGluayBpdCBicmVha3MgYW55dGhpbmcuICBOb3QgbWN1aCBhdApsZWFzdCA6LSkKClRoZSBzZWNv
bmQgcGF0Y2ggdHJpZXMgdG8gYWJ1c2UgdGhlIHBlci10YXJnZXQgcm9vdGZzIGNvZGUKZm9yIGRv
aW5nIHBlci1pbWFnZSByb29mcy4gIFRoZSBkZWZhdWx0IHBhY2thZ2Ugc2V0IGNhbiBiZQphZGp1
c3RlZCBieSBhZGRpbmcgcGFja2FnZXMgdG8gYW4gSU1BR0VfUEFDS0FHRVMvPGltYWdlPgp2YXJp
YWJsZS4gIE9yIG1vcmUgdXNlZnVsOiBQYWNrYWdlcyBjYW4gYmUgcmVtb3ZlZCBieQpwcmVmaXhp
bmcgdGhlbSB3aXRoIGEgJy0nLiAgQXMgdXN1YWwsIHlvdSdsbCBuZWVkIHRvIHJlc29sdmUKZGVw
ZW5kZW5jaWVzIG1hbnVhbGx5IGlmIG90aGVyIHBhY2thY2tlcyBkZXBlbmQgb24gdGhlIG9uZXMK
eW91IHdhbnQgdG8gcmVtb3ZlLgoKVGhlIHRoaXJkIHBhdGNoIGlzIHRoZSB5dWNraWVzdCBvbmUu
ICBJdCBkZWxheXMgdGhlIGtlcm5lbApwYXJ0IG9mIHRoZSBpbml0cmFtZnMgYnVpbGRpbmcgdW50
aWwgd2UgaGF2ZSBzb21lIGlkZWEgYWJvdXQKaW1hZ2VzLCBkZXZpY2VzIGFuZCBwYWNrYWdlcy4g
IEl0IHRoZW4gdXNlcyB0aGUgc2FtZSAKcGVyLWltYWdlIHJvb3RmcyBzb3VyY2UgZGlyZWN0b3J5
IHNjaGVtZSBhcyBpbnB1dCBmb3IgdGhlCmtlcm5lbC4gIEknbSBub3QgcHJvdWQgb2YgaG93IHRo
aXMgY3VycmV0bHkgbG9va3MuICBCdXQgSSBoYWQKdG8gc3RvcCBoZXJlLiAgCgoKQmrDuHJuIE1v
cmsgKDMpOgogIGtlcm5lbC1kZWZhdWx0czogcmVmYWN0b3IgaW5pdHJhbWZzIGJ1aWxkCiAgYnVp
bGQ6IGltcGxlbWVudCBwZXItaW1hZ2UgcGFja2FnZSBzZXRzCiAgYnVpbGQ6IHBlci1pbWFnZSBw
YWNrYWdlIHNldCBmb3IgaW5pdHJhbWZzCgogaW5jbHVkZS9pbWFnZS5tayAgICAgICAgICAgfCAz
MyArKysrKysrKysrKystLS0tCiBpbmNsdWRlL2tlcm5lbC1idWlsZC5tayAgICB8ICAxIC0KIGlu
Y2x1ZGUva2VybmVsLWRlZmF1bHRzLm1rIHwgNzcgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRp
b25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
