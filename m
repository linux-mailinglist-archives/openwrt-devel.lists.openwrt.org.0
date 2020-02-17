Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBC41615E5
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Feb 2020 16:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnv9rKPu4zJWpFt4TMLxTK6Xvps+Itmy/cU8btySd+U=; b=b/F8O15G/IG3NA
	BrAsyNNkwNHe/i5g+Pn2aZPEPEb/BWMcMuGT0TYYJQpxrP8Lo5UXozTVkLMD2b5DXeFMKHBX+5r1G
	GJTWIX/F6hz01phoPYAJrPfviJLQHjiV/9hVG96rzqg1ul/jvjzes6JfHazIzKKlOubL/WoXSw4Tb
	d5DJYJo2VHOWreVTxeBLMnUybhq512T5AEnOuosqiFPQGyhbo7OZzbdwF+zt4XacpAxcCe/Unfvow
	ZssRK4FYJw71fvxwLkHfqopskxC+bN2krjuyKChKgsWUbeyLmDHISfy6Sf7Z6iVlbZNuukqRLdcQu
	7T08DL5rdgOeDnJWvaBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3i6q-0004xz-2U; Mon, 17 Feb 2020 15:14:56 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3i6e-0004xI-Vc
 for openwrt-devel@lists.openwrt.org; Mon, 17 Feb 2020 15:14:46 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MrQMz-1jqm2U32Fb-00oYG5; Mon, 17
 Feb 2020 16:14:37 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Christopher Hill'" <ch6574@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
In-Reply-To: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
Date: Mon, 17 Feb 2020 16:14:37 +0100
Message-ID: <012701d5e5a4$f8179530$e846bf90$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIsUyE3aeGnoPHNjJ0LiTDev/6iV6dyowGw
Content-Language: de
X-Provags-ID: V03:K1:DHGzV4peoIpHGHocoTGdBXEQrqtdGukj6HZ62m+kDkXZmIyVmrK
 3UKRIW6g+WByC4w6tzJKwF2iS/x/VRAL3pdRJ30LDUIKEjvY6jvk3pKEj+p7bIl9+Ec77w1
 rErTuxOSb4G1cVwZq2rKmRw82pnidnzOA7RvflqZklt2C7RF/JJVDxuOS35rCPehqez43tc
 ec6zy7bU4t+A5ZeQI960g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rltU1IXpVpY=:XjPDiJwt9j0phIKXgc9TBe
 cN03SWPfFuWwe8q7psw39XuIP64KxIXTeQh78Tdh2r0cpBZ4lZReFls5kkPHnS45TGeNFTZgA
 uuljuDKyf+4TPhIJtpnBYzYy0B1gJso7z9Sto2zFph1t2pt4vDJJJVVqR+tI+V4ybexnJs50F
 qnlrdeU1yXyx0YQ9e0nNL46PuvBejbo4tTxFBsCGJWudk9pdk5/AogPrmVvNBe3ml7xAodt4m
 5jJU/vdvA2fBWTvbeh6HdQKMssdbfaXcKmUflUjRetZYiCWL7ScQnRE5g4iaFzKJ/H2gjIM+X
 wyeD2Qj89/aNa8U09jDgAnEClQwZCdycGOj4slyEg0J0KoZcYSy6GA6pj4M6gB+rbdyKUWqwi
 hSDowdj+S+4Zm+cKFONhw7YLmpgUP72wW26/vFLlqpr2TGaIA1qNwVXQkKzfJci7PuIacv9tD
 lrRh559NYG3/6UpFOsejL+g1GFZwgmIukdXnNnMuCfvYnJtrI3cmrq4np7LqyifDIkwl5SY5g
 /XlXb8fUsJl+eI4uOQS4RlvN7JbmqKFKfXl5yfR6ART1sDmWPYs9HF3aTH1/hrWKSC2LunuEh
 murNPReLmze+IS8isyKwaE2rTkAcHp71c1U3HYj+70hRbGkjvysPIIC9aJUgNVcQ9XNW0GUVx
 UeFlRq2GN0bK2Wy7oC8vIs++Aai+3Ff74ft8vKbwdGCwX7/R4MeS1Ncb9x1T7RzJlTTmWvI91
 ghAw3SnVjHvTmRmna/cZGS+cTma+S0XlV1Oor5vNS73G8RRAB4I0QddY7fFs2/QXDosvGp3XE
 FNZoF3T1VMNSrRufrVLBrsyTi3HaHDj8ZdX74pkrgz50b6qUf/K/vRDN/Dtgn5PgeTAYTjC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_071445_312353_0184D5C3 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0
bzpvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddIE9uCj4gQmVoYWxmIE9m
IENocmlzdG9waGVyIEhpbGwKPiBTZW50OiBNb250YWcsIDE3LiBGZWJydWFyIDIwMjAgMTY6MDMK
PiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IFN1YmplY3Q6IFtPcGVuV3J0
LURldmVsXSBNaWtyb3RpayBhcjcxeHggLT4gYXRoNzkgcG9ydAo+IAo+IEhpLAo+IAo+IE5ldyBo
ZXJlLCBhbmQgYW0gbG9va2luZyBmb3Igc29tZSBhZHZpY2Ugb24gcG9ydGluZyBhbiBleGlzdGlu
ZyBkZXZpY2UKPiB0byBhdGg3OSAtIHNwZWNpZmljYWxseSBhIE1pa3JvdGlrIFJCNDkzRyAod2hp
Y2ggaXMgTkFORCkuCgpJbiBjYXNlIHlvdSBhcmUgbm90IGF3YXJlLCB0aGVyZSBpcyBhbm90aGVy
IE1pa3JvdGlrIE5BTkQgcHVsbCByZXF1ZXN0IG9uIEdpdEh1YiB3aGljaCBhbHJlYWR5IHJlY2Vp
dmVkIHNvbWUgZmVlZGJhY2s6CgpodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1
bGwvMjczMwoKRG9uJ3Qga25vdyB3aGV0aGVyIHRoaXMgd2lsbCBoZWxwIGluIHlvdXIgY2FzZSwg
dGhvdWdoLgoKQmVzdAoKQWRyaWFuCgo+IAo+IFRoZSBhcmVhIEknbSBsb29raW5nIGZvciBndWlk
YW5jZSAvIHRpcHMgb24gaXMgZ2V0dGluZyB0aGUgbHptYS1sb2FkZXIKPiB0byBib290IHRoZSBu
ZXcga2VybmVsLiBJIGhhdmUgY29tcGlsZWQgYSBuZXcgaW1hZ2UqIGFuZCBJIGNhbiB0ZnRwIGJv
b3QKPiB0aGlzIGFuZCBzZWUgb24gdGhlIHNlcmlhbCBjb25zb2xlIHRoZSBsem1hLWxvYWRlciBy
dW5uaW5nIGFuZAo+IGRlY29tcHJlc3NpbmcgdGhlIGtlcm5lbCBhbmQgdGhlbiBzdGFydGluZyBp
dC4uLiBidXQgdGhlbiBub3RoaW5nCj4gaGFwcGVucyBuZXh0Lgo+IAo+IEkgaGF2ZSB0d28gcXVl
c3Rpb25zIGJlbG93IHRoYXQgSSB3b3VsZCBiZSBncmF0ZWZ1bCBmb3IgYW55IG9waW5pb25zIG92
ZXIuCj4gCj4gVGhhbmtzLAo+IENocmlzCj4gCj4gCj4gKiBUaGUgbmV3IGR0cyBmaWxlIGFuZCBt
YWtlZmlsZSBjaGFuZ2VzIGFyZSBoZXJlOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9jaDY1NzQvb3Bl
bndydC90cmVlL3JiNDkzZwo+IAo+IAo+IAo+IFRoaXMgaXMgd2hhdCBJIHNlZSBvbiB0aGUgc2Vy
aWFsIGNvbnNvbGU6Cj4gCj4gICBPcGVuV3J0IGtlcm5lbCBsb2FkZXIgZm9yIEFSN1hYWC9BUjlY
WFgKPiAgIENvcHlyaWdodCAoQykgMjAxMSBHYWJvciBKdWhvcyA8anVob3NnQG9wZW53cnQub3Jn
Pgo+ICAgRGVjb21wcmVzc2luZyBrZXJuZWwuLi4gZG9uZSEKPiAgIFN0YXJ0aW5nIGtlcm5lbCBh
dCA4MDA2MDAwMC4uLgo+IAo+IFRoYXQncyBpdC4KPiAKPiBJJ3ZlIHRyaWVkIGFkZGluZyBleHRy
YSBib290YXJncyAiZWFybHljb24iIGFuZCAiZWFybHlwcmludGsiIGluIHRoZSBkdHMKPiAiY2hv
c2VuIiBzZWN0aW9uIGhvd2V2ZXIgSSBzdGlsbCBkb24ndCBzZWUgYW55dGhpbmcuIFJ1bm5pbmcg
Ymlud2FsayBvbgo+IG15IG5ldyBhdGg3OSBpbWFnZSB2cyB0aGUgMTkuMDcgYXI3MXh4IGluaXRy
YW1mcyBpbWFnZSByZXZlYWxzIHNvbWUKPiBkaWZmZXJlbmNlczoKPiAKPiAxOS4wMSBhcjcxeHg6
Cj4gCj4gICBERUNJTUFMIEhFWEFERUNJTUFMIERFU0NSSVBUSU9OCj4gCj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAgIDAgICAgICAgMHgwICAgICAgICAgRUxGLCAzMi1iaXQgTVNCIE1JUFMt
SSBleGVjdXRhYmxlLCBNSVBTLCB2ZXJzaW9uIDEKPiAoU1lTVikKPiAgIDk1ODAgICAgMHgyNTZD
ICAgICAgQ29weXJpZ2h0IHN0cmluZzogIkNvcHlyaWdodCAoQykgMjAxMSBHYWJvciBKdWhvcwo+
IDxqdWhvc2dAb3BlbndydC5vcmc+Igo+ICAgOTc4OCAgICAweDI2M0MgICAgICBMWk1BIGNvbXBy
ZXNzZWQgZGF0YSwgcHJvcGVydGllczogMHg2RCwgZGljdGlvbmFyeQo+IHNpemU6IDgzODg2MDgg
Ynl0ZXMsIHVuY29tcHJlc3NlZCBzaXplOiA3NTQzNTU2IGJ5dGVzCj4gCj4gTmV3IGF0aDc5Ogo+
IAo+ICAgREVDSU1BTCBIRVhBREVDSU1BTCBERVNDUklQVElPTgo+IAo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gICAwICAgICAgIDB4MCAgICAgICAgIEVMRiwgMzItYml0IE1TQiBNSVBTLUkg
ZXhlY3V0YWJsZSwgTUlQUywgdmVyc2lvbiAxCj4gKFNZU1YpCj4gICA5NTMyICAgIDB4MjUzQyAg
ICAgIENvcHlyaWdodCBzdHJpbmc6ICJDb3B5cmlnaHQgKEMpIDIwMTEgR2Fib3IgSnVob3MKPiA8
anVob3NnQG9wZW53cnQub3JnPiIKPiAgIDk3NDAgICAgMHgyNjBDICAgICAgTFpNQSBjb21wcmVz
c2VkIGRhdGEsIHByb3BlcnRpZXM6IDB4NkQsIGRpY3Rpb25hcnkKPiBzaXplOiA4Mzg4NjA4IGJ5
dGVzLCB1bmNvbXByZXNzZWQgc2l6ZTogMTI3Mzk1ODIgYnl0ZXMKPiAKPiBTbyBteSBhdGg3OSBp
bWFnZSBpcyBxdWl0ZSBhIGxvdCBiaWdnZXIsIGFsbW9zdCBkb3VibGUuCj4gCj4gCj4gUXVlc3Rp
b24gMSAtICBBbSBJIHJ1bm5pbmcgaW50byBzaXplIGlzc3VlcyBhbmQgc2ltcGx5IGNsb2JiZXJp
bmcgb3RoZXIKPiBhcmVhcyBvZiBtZW1vcnk/Cj4gCj4gCj4gCj4gCj4gCj4gTmV4dCB1c2luZyBi
aW53YWxrIHRvIGV4dHJhY3QgYW5kIHVucGFjayB0aGUgTFpNQSBkYXRhIHJldmVhbHMgdGhlaXIK
PiBjb250ZW50IGlzIHZlcnkgZGlmZmVyZW50Ogo+IAo+IDE5LjAxIGFyNzF4eDoKPiAKPiAgICQg
dHJlZQo+IF9vcGVud3J0LTE5LjA3LjAtYXI3MXh4LW1pa3JvdGlrLXZtbGludXgtaW5pdHJhbWZz
LWx6bWEuZWxmLmV4dHJhY3RlZC8gfAo+IGhlYWQgLTIwCj4gICBfb3BlbndydC0xOS4wNy4wLWFy
NzF4eC1taWtyb3Rpay12bWxpbnV4LWluaXRyYW1mcy1sem1hLmVsZi5leHRyYWN0ZWQvCj4gICDi
lJzilIDilIAgMjYzQwo+ICAg4pSc4pSA4pSAIDI2M0MuN3oKPiAgIOKUlOKUgOKUgCBfMjYzQy5l
eHRyYWN0ZWQKPiAgICAgICDilJzilIDilIAgNDVEQjg4Lnh6Cj4gICAgICAg4pSc4pSA4pSAIDRG
MkQzNAo+ICAgICAgIOKUnOKUgOKUgCA0RjJEMzQuN3oKPiAgICAgICDilJTilIDilIAgXzRGMkQz
NC5leHRyYWN0ZWQKPiAgICAgICAgICAg4pSc4pSA4pSAIDAuY3Bpbwo+ICAgICAgICAgICDilJTi
lIDilIAgY3Bpby1yb290Cj4gICAgICAgICAgICAgICDilJzilIDilIAgYmluCj4gICAgICAgICAg
ICAgICDilIIgICDilJzilIDilIAgYXNoIC0+IGJ1c3lib3gKPiAgICAgICAgICAgICAgIOKUgiAg
IOKUnOKUgOKUgCBib2FyZF9kZXRlY3QKPiAgICAgICAgICAgICAgIOKUgiAgIOKUnOKUgOKUgCBi
dXN5Ym94Cj4gICAgICAgICAgICAgICDilIIgICDilJzilIDilIAgY2F0IC0+IGJ1c3lib3gKPiAg
ICAgICAgICAgICAgIOKUgiAgIOKUnOKUgOKUgCBjaGdycCAtPiBidXN5Ym94Cj4gCj4gCj4gTmV3
IGF0aDc5Ogo+IAo+ICAgJCB0cmVlCj4gX29wZW53cnQtYXRoNzktbmFuZC1taWtyb3Rpa19yb3V0
ZXJib2FyZC1yYjQ5M2ctaW5pdHJhbWZzLQo+IGtlcm5lbC5iaW4uZXh0cmFjdGVkLwo+ICAg4pSc
4pSA4pSAIDI2MEMKPiAgIOKUnOKUgOKUgCAyNjBDLjd6Cj4gICDilJTilIDilIAgXzI2MEMuZXh0
cmFjdGVkCj4gICAgICAg4pSc4pSA4pSAIFsKPiAgICAgICDilJzilIDilIAgW1sKPiAgICAgICDi
lJzilIDilIAgMDAtbmV0c3RhdGUKPiAgICAgICDilJzilIDilIAgMDBfcHJlaW5pdC5jb25mCj4g
ICAgICAg4pSc4pSA4pSAIDAwLXN5c2N0bAo+ICAgICAgIOKUnOKUgOKUgCAwMC13aWZpLW1pZ3Jh
dGlvbgo+ICAgICAgIOKUnOKUgOKUgCAwMV9sZWRzCj4gICAgICAg4pSc4pSA4pSAIDAyX2RlZmF1
bHRfc2V0X3N0YXRlCj4gICAgICAg4pSc4pSA4pSAIDAyX25ldHdvcmsKPiAgICAgICDilJzilIDi
lIAgMDJfc3lzaW5mbwo+ICAgICAgIOKUnOKUgOKUgCAwYjI2ZjM2YWUwZjQxMDZkCj4gICA8c25p
cD4KPiAgICAgICDilJzilIDilIAgNTQwQjI4Lnh6Cj4gICAgICAg4pSc4pSA4pSAIDVEM0I4NC5j
cGlvCj4gICA8c25pcD4KPiAgICAgICDilJzilIDilIAgY3Bpby1yb290Cj4gICAgICAg4pSCICAg
4pSc4pSA4pSAIGJpbgo+ICAgICAgIOKUgiAgIOKUgiAgIOKUnOKUgOKUgCBhc2ggLT4gYnVzeWJv
eAo+ICAgICAgIOKUgiAgIOKUgiAgIOKUnOKUgOKUgCBib2FyZF9kZXRlY3QKPiAKPiAKPiBRdWVz
dGlvbiAyIC0gYXJlIHRoZXNlIGRpZmZlcmVuY2VzIGluIGhvdyB0aGUgaW1hZ2UgaXMgYmVpbmcg
cGFja2VkCj4gY2F1c2luZyBwcm9ibGVtcz8KPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
