Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895312A6CB
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 21:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Dr2cgjqDXHpQ+JphO9PuGyvztDXMk7d1ElqjiLXH4A=; b=ZrB3U+nFKcVLz0
	Keqr+5TTonjsf4YVR9O/4NAibBG6bfe9SCmKuAO6b6hNmVWWWUrUtuQu4Ndfjfnmb3wsJolyxLcgZ
	BB0F2jhaYN4Gu7cthuXO8IhIm3X2EpCoK41wtxGqOQNhVM1Uj4tMVNtd/1U0OQNuCc9g3+UvUMjbt
	kvriCdvymFIs7inwEDVJW4TUzxw2bmoDGr+ZroqVXHsQiPbQKmTmvHUGNi0rTKZb1tQQQKfV1hgP3
	SdPplS3wRW6Wuyl+7DpDPdJTJ8GaG7L2mxxsZ81kHYoRS8RXe49b2W5wbZlog/gminy1g7V/9t+Vm
	4FJoZDGDm5T2FmpaEU7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUcSW-0004tK-A6; Sat, 25 May 2019 19:36:00 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUcSN-0004sG-Ey
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 19:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1558812937;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=gYJ6OZf0D2Eld9+1sohTqoj8KC1MMiD62IS7r6de0Kg=;
 b=d58B9RcU6x6zleBQ6+0FGoQU2CCqVSwUV+ltjQIAjqCprH4jyF8fwJwq3xUXNWXlx9
 4J58zR3DS/y8hBXNtYSWHJFo+8Vqck8QAvHj7cNx02C3JQXbL3NwSjDpB6ikXOjv+Ivr
 H3YB1t8JcR7SJmyMadS+IV4ogWfMQ597OUgorKYWbkYSpbkk1QNLRT54axASMGvjxjaZ
 P55uOH9+oL73buQX/KDRMG/yYNNAtiE5S+dS6r8PeluVoGHTTIq/J+rBNFFyh9Kymt8R
 sC/dBdAGkwYGHeYPgEiEtZ7iPXzytYPr7KPDSogwY+4uDea4WJc997hVt/HiW92nqzaQ
 j7oQ==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaL/Sfy7ku"
X-RZG-CLASS-ID: mo00
Received: from positron.chronox.de by smtp.strato.de (RZmta 44.18 DYNA|AUTH)
 with ESMTPSA id R0373fv4PJZWa2j
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sat, 25 May 2019 21:35:32 +0200 (CEST)
From: Stephan =?ISO-8859-1?Q?M=FCller?= <smueller@chronox.de>
To: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Sat, 25 May 2019 21:35:31 +0200
Message-ID: <2340455.pnO4HP4FDj@positron.chronox.de>
In-Reply-To: <1558368805-19484-1-git-send-email-ynezz@true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_123553_070479_110696CD 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
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
Cc: openwrt-devel@lists.openwrt.org,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gTW9udGFnLCAyMC4gTWFpIDIwMTksIDE4OjEzOjIwIENFU1Qgc2NocmllYiBQZXRyIMWgdGV0
aWFyOgoKSGkgUGV0ciwKCkEgc3lzdGVtIGNhbGxlZCBUTlQgQk9NIEJPTSBzZW50IG1lIHRlc3Qg
cmVzdWx0cyBmb3IgUXViZXMuIEkgYW0gbm90IHN1cmUgd2hvIAp0byByZXBseSB0byB0aGUgYW5h
bHlzaXMuIFRoZXJlZm9yZSwgSSB3aWxsIHJlcGx5IHRvIHRoaXMgdGhyZWFkLgoKVGhlIGZpcnN0
IHRlc3QgIlRlc3QtUmVzdWx0cyIgc2hvdyB0aGF0IHRoZSBoZXVyaXN0aWMgdmFsaWRhdGluZyB3
aGV0aGVyIHRoZSAKdW5kZXJseWluZyBwbGF0Zm9ybSBpcyBzdWZmaWNpZW50IGZvciB0aGUgSml0
dGVyIFJORyBoYXMgZGV0ZWN0ZWQgbm8gCmluc3VmZmljaWVuY3kgZHVyaW5nIDEwMDAwIHRlc3Qg
cnVucy4gQ2hlY2suCgpUaGUgZmlsZSBmb2xkdGltZS5PMCBjb250YWlucyB0ZXN0IHJlc3VsdHMg
Zm9yIHRoZSBub24tb3B0aW1pemVkIGJpbmFyeSBjb2RlIAp0aGF0IGlzIHRoZSBiYXNpcyBmb3Ig
dGhlIEppdHRlciBSTkcuIFRvIHVuZGVyc3RhbmQgd2hhdCBpdCBzaG93cywgd2UgaGF2ZSB0byAK
dW5kZXJzdGFuZCB3aGF0IHRoZSBKaXR0ZXIgUk5HIHJlYWxseSBkb2VzOiBpdCBzaW1wbHkgbWVh
c3VyZXMgdGhlIGV4ZWN1dGlvbiAKdGltZSBvZiBhIGZpeGVkIGNvZGUgZnJhZ21lbnQuIFRoZSB0
ZXN0IGRvZXMgdGhlIHNhbWUsIGkuZS4gaXQgbWVhc3VyZXMgd2hhdCAKdGhlIEppdHRlciBSTkcg
d291bGQgbWVhc3VyZS4gRWFjaCB0aW1lIGRlbHRhIGlzIHNpbXBseSByZWNvcmRlZC4KCkVhY2gg
dGltZSBkZWx0YSBpcyBleHBlY3RlZCB0byBjb250cmlidXRlIGVudHJvcHkgdG8gdGhlIGVudHJv
cHkgcG9vbC4gQnV0IGhvdyAKbXVjaD8gV2UgY2FuIHVzZSB0aGUgU1A4MDAtOTBCIHRvb2wgc2V0
IHByb3ZpZGVkIGJ5IE5JU1QgYXQgWzFdLiBUaGlzIHRvb2wsIApob3dldmVyLCBjYW4gb25seSBw
cm9jZXNzIGlucHV0IGRhdGEgd2l0aCBhIHdpbmRvdyBzaXplIG9mIGEgZmV3IGJpdHMgYXQgbW9z
dC4gClRodXMsIHdlIHRha2UgdGhlIDQgTFNCIG9mIGVhY2ggdGltZSBkZWx0YSwgaG9waW5nIHRo
YXQgdGhleSBjb250YWluIGFscmVhZHkgCnN1ZmZpY2llbnQgZW50cm9weS4gCgpVc2luZyB0aGUg
dG9vbCBbMV0sIHdlIGdldCB0aGUgZm9sbG93aW5nIG91dHB1dDoKClJ1bm5pbmcgbm9uLUlJRCB0
ZXN0cy4uLgoKUnVubmluZyBNb3N0IENvbW1vbiBWYWx1ZSBFc3RpbWF0ZS4uLgpCaXRzdHJpbmcg
TUNWIEVzdGltYXRlOiBtb2RlID0gMjAwNTYyMCwgcC1oYXQgPSAwLjUwMTQwNDk5OTk5OTk5OTk5
LCBwX3UgPSAKMC41MDIwNDg5NTQ4NjQwMDA4MQogICAgICAgIE1vc3QgQ29tbW9uIFZhbHVlIEVz
dGltYXRlIChiaXQgc3RyaW5nKSA9IDAuOTk0MTAwIC8gMSBiaXQocykKClJ1bm5pbmcgRW50cm9w
aWMgU3RhdGlzdGljIEVzdGltYXRlcyAoYml0IHN0cmluZ3Mgb25seSkuLi4KQml0c3RyaW5nIENv
bGxpc2lvbiBFc3RpbWF0ZTogWC1iYXIgPSAyLjUwMTA5NzM1NjQ2NTE0OTEsIHNpZ21hLWhhdCA9
IAowLjQ5OTk5ODk1MjEyNTYxOTk2LCBwID0gMC41CiAgICAgICAgQ29sbGlzaW9uIFRlc3QgRXN0
aW1hdGUgKGJpdCBzdHJpbmcpID0gMS4wMDAwMDAgLyAxIGJpdChzKQpCaXRzdHJpbmcgTWFya292
IEVzdGltYXRlOiBQXzAgPSAwLjUwMTQwNDk5OTk5OTk5OTk5LCBQXzEgPSAKMC40OTg1OTUwMDAw
MDAwMDAwMSwgUF8wLDAgPSAwLjUwMDMyMzA5MjExMTE2NzY2LCBQXzAsMSA9IDAuNDk5Njc2OTA3
ODg4ODMyMzQsIApQXzEsMCA9IDAuNTAyNDkzMjU3Mjk5NjQwNjcsIFBfMSwxID0gMC40OTc1MDY3
NDI3MDAzNTkzMywgcF9tYXggPSAKMy44NjgxODk5MTAxOTk2M2UtMzkKICAgICAgICBNYXJrb3Yg
VGVzdCBFc3RpbWF0ZSAoYml0IHN0cmluZykgPSAwLjk5NjkwMyAvIDEgYml0KHMpCkJpdHN0cmlu
ZyBDb21wcmVzc2lvbiBFc3RpbWF0ZTogWC1iYXIgPSA1LjIxNzAzMjAzOTM2NjQwMjMsIHNpZ21h
LWhhdCA9IAoxLjAxNDY3ODU1NjE4Nzg5MzUsIHAgPSAwLjAyNTg0NzA0NDk0MzMxOTY4NgogICAg
ICAgIENvbXByZXNzaW9uIFRlc3QgRXN0aW1hdGUgKGJpdCBzdHJpbmcpID0gMC44Nzg5NzYgLyAx
IGJpdChzKQoKUnVubmluZyBUdXBsZSBFc3RpbWF0ZXMuLi4KQml0c3RyaW5nIHQtVHVwbGUgRXN0
aW1hdGU6IHQgPSAxOCwgcC1oYXRfbWF4ID0gMC41MjM2MDEwOTk2MDMzMTQzNiwgcF91ID0gCjAu
NTI0MjQ0MzM5MjI1Nzc5MDcKQml0c3RyaW5nIExSUyBFc3RpbWF0ZTogdSA9IDE5LCB2ID0gNDIs
IHAtaGF0ID0gMC41MDAwMTIxNTgyNDAwMTQ3NywgcF91ID0gCjAuNTAwNjU2MTE1NjQ2MjA2MjcK
ICAgICAgICBULVR1cGxlIFRlc3QgRXN0aW1hdGUgKGJpdCBzdHJpbmcpID0gMC45MzE2ODkgLyAx
IGJpdChzKQogICAgICAgIExSUyBUZXN0IEVzdGltYXRlIChiaXQgc3RyaW5nKSA9IDAuOTk4MTA4
IC8gMSBiaXQocykKClJ1bm5pbmcgUHJlZGljdG9yIEVzdGltYXRlcy4uLgpCaXRzdHJpbmcgTXVs
dGlNQ1cgUHJlZGljdGlvbiBFc3RpbWF0ZTogTiA9IDM5OTk5MzcsIFBnbG9iYWwnID0gCjAuNTAw
NDYwMDg0NTM3OTg0NjMgKEMgPSAxOTk5MjMzKSBQbG9jYWwgY2FuJ3QgYWZmZWN0IHJlc3VsdCAo
ciA9IDI0KQogICAgICAgIE11bHRpIE1vc3QgQ29tbW9uIGluIFdpbmRvdyAoTXVsdGlNQ1cpIFBy
ZWRpY3Rpb24gVGVzdCBFc3RpbWF0ZSAoYml0IApzdHJpbmcpID0gMC45OTg2NzMgLyAxIGJpdChz
KQpCaXRzdHJpbmcgTGFnIFByZWRpY3Rpb24gRXN0aW1hdGU6IE4gPSAzOTk5OTk5LCBQZ2xvYmFs
JyA9IDAuNTAxMTcwNTgyMjYxMzUwMTQgCihDID0gMjAwMjEwNikgUGxvY2FsIGNhbid0IGFmZmVj
dCByZXN1bHQgKHIgPSAyMikKICAgICAgICBMYWcgUHJlZGljdGlvbiBUZXN0IEVzdGltYXRlIChi
aXQgc3RyaW5nKSA9IDAuOTk2NjI2IC8gMSBiaXQocykKQml0c3RyaW5nIE11bHRpTU1DIFByZWRp
Y3Rpb24gRXN0aW1hdGU6IE4gPSAzOTk5OTk4LCBQZ2xvYmFsJyA9IAowLjUwMjQwOTk1NDQzMzY2
MjIxIChDID0gMjAwNzA2MykgUGxvY2FsIGNhbid0IGFmZmVjdCByZXN1bHQgKHIgPSAyMSkKICAg
ICAgICBNdWx0aSBNYXJrb3YgTW9kZWwgd2l0aCBDb3VudGluZyAoTXVsdGlNTUMpIFByZWRpY3Rp
b24gVGVzdCBFc3RpbWF0ZSAKKGJpdCBzdHJpbmcpID0gMC45OTMwNjMgLyAxIGJpdChzKQpCaXRz
dHJpbmcgTFo3OFkgUHJlZGljdGlvbiBFc3RpbWF0ZTogTiA9IDM5OTk5ODMsIFBnbG9iYWwnID0g
CjAuNTAxOTUwMDg3MTI4Njg5NDkgKEMgPSAyMDA1MjE2KSBQbG9jYWwgY2FuJ3QgYWZmZWN0IHJl
c3VsdCAociA9IDI0KQogICAgICAgIExaNzhZIFByZWRpY3Rpb24gVGVzdCBFc3RpbWF0ZSAoYml0
IHN0cmluZykgPSAwLjk5NDM4NCAvIDEgYml0KHMpCgpoJzogMC44Nzg5NzYKCgotIGFzIHdlIGFu
YWx5emVkIDQgYml0cyBvZiBlYWNoIHRpbWUgZGVsdGEsIHdlIGdldCA0ICogMC44Nzg5NzYgPSAz
LjUxNTkwNCAKYml0cyBvZiBlbnRyb3B5IHBlciBmb3VyIGJpdCB0aW1lIGRlbHRhCgotIGFzc3Vt
aW5nIHRoZSB3b3JzdCBjYXNlIHRoYXQgYWxsIG90aGVyIGJpdHMgaW4gdGhlIHRpbWUgZGVsdGEg
aGF2ZSBubyAKZW50cm9weSwgd2UgaGF2ZSAzLjUxNTkwNCBiaXRzIG9mIGVudHJvcHkgcGVyIHRp
bWUgZGVsdGEKCi0gdGhlIEppdHRlciBSTkcgZ2F0aGVycyA2NCB0aW1lIGRlbHRhcyBmb3IgcmV0
dXJuaW5nIDY0IGJpdHMgb2YgcmFuZG9tIGRhdGEgCmFuZCBpdCB1c2VzIGFuIExGU1Igd2l0aCBh
IHByaW1pdGl2ZSBhbmQgaXJyZWR1Y2libGUgcG9seW5vbWlhbCB3aGljaCBpcyAKZW50cm9weSBw
cmVzZXJ2aW5nLiBUaHVzLCB0aGUgSml0dGVyIFJORyBjb2xsZWN0ZWQgNjQgKiAzLjUxNTkwNCA9
IDIyNS4wMTc4NTYgCmJpdHMgb2YgZW50cm9weSBmb3IgaXRzIDY0IGJpdCBvdXRwdXQuCgotIGFz
IHRoZSBKaXR0ZXIgUk5HIG1haW50YWlucyBhIDY0IGJpdCBlbnRyb3B5IHBvb2wsIGl0cyBlbnRy
b3B5IGNvbnRlbnQgCmNhbm5vdCBiZSBsYXJnZXIgdGhhbiB0aGUgcG9vbCBpdHNlbGYuIFRodXMs
IHRoZSBlbnRyb3B5IGNvbnRlbnQgaW4gdGhlIHBvb2wgCmFmdGVyIGNvbGxlY3RpbmcgNjQgdGlt
ZSBkZWx0YXMgaXMgbWF4KDY0IGJpdHMsIDIyNS4wMTc4NTYpID0gNjQgYml0cwoKVGhpcyBpbXBs
aWVzIHRoYXQgdGhlIEppdHRlciBSTkcgZGF0YSBoYXMgKGNsb3NlIHRvKSA2NCBiaXRzIG9mIGVu
dHJvcHkgcGVyIApkYXRhIGJpdC4KCkJvdHRvbSBsaW5lOiBXaGVuIHRoZSBKaXR0ZXIgUk5HIGlu
amVjdHMgNjQgYml0cyBvZiBkYXRhIGludG8gdGhlIExpbnV4IC9kZXYvCnJhbmRvbSB2aWEgdGhl
IElPQ1RMLCBpdCBpcyBhcHByb3ByaWF0ZSB0aGF0IHRoZSBlbnRyb3B5IGVzdGltYXRvciBpbmNy
ZWFzZXMgCmJ5IDY0IGJpdHMuCgpCb3R0b20gbGluZTogRnJvbSBteSBwZXJzcGVjdGl2ZSwgSSBz
ZWUgbm8gaXNzdWUgaW4gdXNpbmcgdGhlIEppdHRlciBSTkcgYXMgYSAKbm9pc2Ugc291cmNlIGlu
IHlvdXIgZW52aXJvbm1lbnRzLgoKCk5vdGUsIGFwcGx5aW5nIHRoZSBTaGFubm9uLUVudHJvcHkg
Zm9ybXVsYSB0byB0aGUgZGF0YSwgd2Ugd2lsbCBnZXQgbXVjaCAKaGlnaGVyIGVudHJvcHkgdmFs
dWVzLgoKTm90ZSBJSTogVGhpcyBhc3Nlc3NtZW50IGNvbXBsaWVzIHdpdGggdGhlIGVudHJvcHkg
YXNzZXNzbWVudHMgdG8gYmUgZG9uZSBmb3IgCmEgTklTVCBGSVAgMTQwLTIgdmFsaWRhdGlvbiBj
b21wbGlhbnQgdG8gRklQUyAxNDAtMiBJRyA3LjE1IAoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS91
c25pc3Rnb3YvU1A4MDAtOTBCX0VudHJvcHlBc3Nlc3NtZW50CgoKCkNpYW8KU3RlcGhhbgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
