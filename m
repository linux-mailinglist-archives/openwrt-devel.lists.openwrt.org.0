Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0C81F8493
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 20:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=++EmXFn0O6GJhSW2lv2v6Gzwh6qM5WXNNRJawMoTqx8=; b=KMFskWnT7Od9+V
	yvtkBLqziODdw01hByxc+qWxcV/NeFF4X0EYalFtLiuWxB1L99MffzPiRy2eYjfyAsoQrnW74yYDG
	y5CfjpXrWSm/O02VT8dmHH4zr3x052S8BE24EYMi7CcADp5p15cb1OkIVw758/eHD7nCHXBamrgMT
	iY+u6WHppIgtJt2cPQmPjeAEqGa6OnkslXeHAVtiXdgH2Lb87kWa3r++Ra9/RPxKoxgtWsgh6xLvs
	ceXGKFRMU9Rsyeo6jXIAT4s7l5yDJw9zKMZDW5TjV+m4YUFW5y+6fhlZud8jgODpgQZiCfUHcL4Ht
	Jz5qQLRPUXUEv+MIrZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkAjS-0004oc-5K; Sat, 13 Jun 2020 18:18:18 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkAjK-0004ng-Rb
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 18:18:13 +0000
Received: from [2001:912:1800::ac1] (helo=fedic.lan)
 by mails.bitsofnetworks.org with esmtp (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1jkAj1-0007ke-Ts; Sat, 13 Jun 2020 20:17:51 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 13 Jun 2020 20:17:40 +0200
Message-Id: <20200613181740.988875-1-baptiste@bitsofnetworks.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_111811_058571_647C9BD2 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 18.06] libubox: backport additional
 length-checking fixes
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Baptiste Jonglez <git@bitsofnetworks.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogQmFwdGlzdGUgSm9uZ2xleiA8Z2l0QGJpdHNvZm5ldHdvcmtzLm9yZz4KCkZpeGVzOiBG
UyMzMTc3CkNjOiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+CkNjOiBSYWZhxYIgTWnFgmVj
a2kgPHJhZmFsQG1pbGVja2kucGw+ClNpZ25lZC1vZmYtYnk6IEJhcHRpc3RlIEpvbmdsZXogPGdp
dEBiaXRzb2ZuZXR3b3Jrcy5vcmc+Ci0tLQogcGFja2FnZS9saWJzL2xpYnVib3gvTWFrZWZpbGUg
ICAgICAgICAgICAgICAgIHwgICAyICstCiAuLi5zLWl0ZXJhdGlvbi1pbi10aGUtYmxvYm1zZ19j
aGVja19hcnIucGF0Y2ggfCAgNzUgKysrKysrKysrKwogLi4uc2ctZml4LWxlbmd0aC1pbi1ibG9i
bXNnX2NoZWNrX2FycmF5LnBhdGNoIHwgIDI4ICsrKysKIC4uLi1hbmQtZml4LW5hbWUtbGVuZ3Ro
LWNoZWNrcy1pbi1ibG9ibS5wYXRjaCB8ICA0OSArKysrKysrCiAuLi4yMS1ibG9ibXNnLWZpeC1t
aXNzaW5nLWxlbmd0aC1jaGVja3MucGF0Y2ggfCAxMzggKysrKysrKysrKysrKysrKysrCiA1IGZp
bGVzIGNoYW5nZWQsIDI5MSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgcGFja2FnZS9saWJzL2xpYnVib3gvcGF0Y2hlcy8wMDE4LWJsb2Jtc2ctZml4LWF0
dHJzLWl0ZXJhdGlvbi1pbi10aGUtYmxvYm1zZ19jaGVja19hcnIucGF0Y2gKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBwYWNrYWdlL2xpYnMvbGlidWJveC9wYXRjaGVzLzAwMTktYmxvYm1zZy1maXgtbGVu
Z3RoLWluLWJsb2Jtc2dfY2hlY2tfYXJyYXkucGF0Y2gKIGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNr
YWdlL2xpYnMvbGlidWJveC9wYXRjaGVzLzAwMjAtYmxvYm1zZy1zaW1wbGlmeS1hbmQtZml4LW5h
bWUtbGVuZ3RoLWNoZWNrcy1pbi1ibG9ibS5wYXRjaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHBhY2th
Z2UvbGlicy9saWJ1Ym94L3BhdGNoZXMvMDAyMS1ibG9ibXNnLWZpeC1taXNzaW5nLWxlbmd0aC1j
aGVja3MucGF0Y2gKCmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvbGlidWJveC9NYWtlZmlsZSBi
L3BhY2thZ2UvbGlicy9saWJ1Ym94L01ha2VmaWxlCmluZGV4IGUzYTgyN2MxYWIuLmU0ZjFhNmI1
MDMgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbGlicy9saWJ1Ym94L01ha2VmaWxlCisrKyBiL3BhY2th
Z2UvbGlicy9saWJ1Ym94L01ha2VmaWxlCkBAIC0xLDcgKzEsNyBAQAogaW5jbHVkZSAkKFRPUERJ
UikvcnVsZXMubWsKIAogUEtHX05BTUU6PWxpYnVib3gKLVBLR19SRUxFQVNFPTQKK1BLR19SRUxF
QVNFPTUKIAogUEtHX1NPVVJDRV9QUk9UTzo9Z2l0CiBQS0dfU09VUkNFX1VSTD0kKFBST0pFQ1Rf
R0lUKS9wcm9qZWN0L2xpYnVib3guZ2l0CmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvbGlidWJv
eC9wYXRjaGVzLzAwMTgtYmxvYm1zZy1maXgtYXR0cnMtaXRlcmF0aW9uLWluLXRoZS1ibG9ibXNn
X2NoZWNrX2Fyci5wYXRjaCBiL3BhY2thZ2UvbGlicy9saWJ1Ym94L3BhdGNoZXMvMDAxOC1ibG9i
bXNnLWZpeC1hdHRycy1pdGVyYXRpb24taW4tdGhlLWJsb2Jtc2dfY2hlY2tfYXJyLnBhdGNoCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLjI4MzRlMTBlZTMKLS0tIC9kZXYv
bnVsbAorKysgYi9wYWNrYWdlL2xpYnMvbGlidWJveC9wYXRjaGVzLzAwMTgtYmxvYm1zZy1maXgt
YXR0cnMtaXRlcmF0aW9uLWluLXRoZS1ibG9ibXNnX2NoZWNrX2Fyci5wYXRjaApAQCAtMCwwICsx
LDc1IEBACitGcm9tIDVlNzUxNjBmNDg3ODU0NjRmOTIxM2M2YmM4YzcyYjkzNzJjNTMxOGIgTW9u
IFNlcCAxNyAwMDowMDowMCAyMDAxCitGcm9tOiA9P1VURi04P3E/UmFmYT1DNT04Mj0yME1pPUM1
PTgyZWNraT89IDxyYWZhbEBtaWxlY2tpLnBsPgorRGF0ZTogU2F0LCAyMyBNYXkgMjAyMCAxMzox
ODo1MSArMDIwMAorU3ViamVjdDogW1BBVENIXSBibG9ibXNnOiBmaXggYXR0cnMgaXRlcmF0aW9u
IGluIHRoZSBibG9ibXNnX2NoZWNrX2FycmF5X2xlbigpCitNSU1FLVZlcnNpb246IDEuMAorQ29u
dGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CitDb250ZW50LVRyYW5zZmVyLUVu
Y29kaW5nOiA4Yml0CisKK1N0YXJ0aW5nIHdpdGggNzVlMzAwYWVlYzI1ICgiYmxvYm1zZzogZml4
IHdyb25nIHBheWxvYWQgbGVuIHBhc3NlZCBmcm9tCitibG9ibXNnX2NoZWNrX2FycmF5IikgYmxv
Ym1zZ19jaGVja19hcnJheV9sZW4oKSBnZXRzICpibG9iKiBsZW5ndGgKK3Bhc3NlZCBhcyBhcmd1
bWVudC4gSXQgY2Fubm90IGJlIHVzZWQgd2l0aCBfX2Jsb2Jtc2dfZm9yX2VhY2hfYXR0cigpCit3
aGljaCBleHBlY3RzICpkYXRhKiBsZW5ndGguCisKK1VzZSBibG9ibXNnX2Zvcl9lYWNoX2F0dHIo
KSB3aGljaCBjYWxjdWxhdGVzICpkYXRhKiBsZW5ndGggb24gaXRzIG93bi4KKworVGhlIHNhbWUg
YnVnIHdhcyBhbHJlYWR5IHJlcG9ydGVkIGluIHRoZSBwYXN0IGFuZCB0aGVyZSB3YXMgZml4IGF0
dGVtcHQKK2luIHRoZSBjb21taXQgY2Q3NTEzNmIxMzQyICgiYmxvYm1zZzogZml4IHdyb25nIHBh
eWxvYWQgbGVuIHBhc3NlZCBmcm9tCitibG9ibXNnX2NoZWNrX2FycmF5IikuIFRoYXQgY2hhbmdl
IG1hZGUgYmxvYm1zZ19jaGVja19hdHRyX2xlbigpIGNhbGxzCitmYWlsIGhvd2V2ZXIuCisKK1Ro
aXMgaXMgaG9wZWZ1bGx5IHRoZSBjb3JyZWN0ICYgY29tcGxldGUgZml4OgorMS4gYmxvYm1zZ19j
aGVja19hcnJheV9sZW4oKSBnZXRzICpibG9iKiBsZW5ndGgKKzIuIEl0IGNhbGxzIGJsb2Jtc2df
Y2hlY2tfYXR0cl9sZW4oKSB3aGljaCByZXF1aXJlcyAqYmxvYiogbGVuZ3RoCiszLiBJdCB1c2Vz
IGJsb2Jtc2dfZm9yX2VhY2hfYXR0cigpIHdoaWNoIGdldHMgKmRhdGEqIGxlbmd0aAorCitUaGlz
IGZpeGVzIGl0ZXJhdGluZyBvdmVyIHJhbmRvbSBtZW1vcnkgdHJlYXRlZCBhcyBhdHRycy4gVGhh
dCB3YXMKK3Jlc3VsdGluZyBpbiBjaGVjayBmYWlsaW5nIHJhbmRvbWx5IGZvciB0b3RhbGx5IGNv
cnJlY3QgYmxvYnMuIEl0J3MKK2NyaXRpY2FsIGUuZy4gZm9yIHByb2NkIHByb2plY3Qgd2l0aCBp
dHMgaW5zdGFuY2VfZmlsbF9hcnJheSgpIGZhaWxpbmcKK2FuZCBwcm9jZCBub3Qgc3RhcnRpbmcg
c2VydmljZXMuCisKK0ZpeGVzOiA3NWUzMDBhZWVjMjUgKCJibG9ibXNnOiBmaXggd3JvbmcgcGF5
bG9hZCBsZW4gcGFzc2VkIGZyb20gYmxvYm1zZ19jaGVja19hcnJheSIpCitTaWduZWQtb2ZmLWJ5
OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+CistLS0KKyBibG9ibXNnLmMgfCAx
MCArKysrKystLS0tCisgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKKworZGlmZiAtLWdpdCBhL2Jsb2Jtc2cuYyBiL2Jsb2Jtc2cuYworaW5kZXggOGI5ODc3
ZC4uNTkwNDVlMSAxMDA2NDQKKy0tLSBhL2Jsb2Jtc2cuYworKysrIGIvYmxvYm1zZy5jCitAQCAt
MTE3LDE2ICsxMTcsMTggQEAgaW50IGJsb2Jtc2dfY2hlY2tfYXJyYXkoY29uc3Qgc3RydWN0IGJs
b2JfYXR0ciAqYXR0ciwgaW50IHR5cGUpCisgCXJldHVybiBibG9ibXNnX2NoZWNrX2FycmF5X2xl
bihhdHRyLCB0eXBlLCBibG9iX2xlbihhdHRyKSk7CisgfQorIAorLWludCBibG9ibXNnX2NoZWNr
X2FycmF5X2xlbihjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBpbnQgdHlwZSwgc2l6ZV90
IGxlbikKKytpbnQgYmxvYm1zZ19jaGVja19hcnJheV9sZW4oY29uc3Qgc3RydWN0IGJsb2JfYXR0
ciAqYXR0ciwgaW50IHR5cGUsCisrCQkJICAgIHNpemVfdCBibG9iX2xlbikKKyB7CisgCXN0cnVj
dCBibG9iX2F0dHIgKmN1cjsKKysJc2l6ZV90IHJlbTsKKyAJYm9vbCBuYW1lOworIAlpbnQgc2l6
ZSA9IDA7CisgCisgCWlmICh0eXBlID4gQkxPQk1TR19UWVBFX0xBU1QpCisgCQlyZXR1cm4gLTE7
CisgCistCWlmICghYmxvYm1zZ19jaGVja19hdHRyX2xlbihhdHRyLCBmYWxzZSwgbGVuKSkKKysJ
aWYgKCFibG9ibXNnX2NoZWNrX2F0dHJfbGVuKGF0dHIsIGZhbHNlLCBibG9iX2xlbikpCisgCQly
ZXR1cm4gLTE7CisgCisgCXN3aXRjaCAoYmxvYm1zZ190eXBlKGF0dHIpKSB7CitAQCAtMTQwLDEx
ICsxNDIsMTEgQEAgaW50IGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuKGNvbnN0IHN0cnVjdCBibG9i
X2F0dHIgKmF0dHIsIGludCB0eXBlLCBzaXplX3QgbGVuKQorIAkJcmV0dXJuIC0xOworIAl9Cisg
CistCV9fYmxvYm1zZ19mb3JfZWFjaF9hdHRyKGN1ciwgYXR0ciwgbGVuKSB7CisrCWJsb2Jtc2df
Zm9yX2VhY2hfYXR0cihjdXIsIGF0dHIsIHJlbSkgeworIAkJaWYgKHR5cGUgIT0gQkxPQk1TR19U
WVBFX1VOU1BFQyAmJiBibG9ibXNnX3R5cGUoY3VyKSAhPSB0eXBlKQorIAkJCXJldHVybiAtMTsK
KyAKKy0JCWlmICghYmxvYm1zZ19jaGVja19hdHRyX2xlbihjdXIsIG5hbWUsIGxlbikpCisrCQlp
ZiAoIWJsb2Jtc2dfY2hlY2tfYXR0cl9sZW4oY3VyLCBuYW1lLCByZW0pKQorIAkJCXJldHVybiAt
MTsKKyAKKyAJCXNpemUrKzsKZGlmZiAtLWdpdCBhL3BhY2thZ2UvbGlicy9saWJ1Ym94L3BhdGNo
ZXMvMDAxOS1ibG9ibXNnLWZpeC1sZW5ndGgtaW4tYmxvYm1zZ19jaGVja19hcnJheS5wYXRjaCBi
L3BhY2thZ2UvbGlicy9saWJ1Ym94L3BhdGNoZXMvMDAxOS1ibG9ibXNnLWZpeC1sZW5ndGgtaW4t
YmxvYm1zZ19jaGVja19hcnJheS5wYXRjaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAwLi45ZGIyZmI0ZjlmCi0tLSAvZGV2L251bGwKKysrIGIvcGFja2FnZS9saWJzL2xpYnVi
b3gvcGF0Y2hlcy8wMDE5LWJsb2Jtc2ctZml4LWxlbmd0aC1pbi1ibG9ibXNnX2NoZWNrX2FycmF5
LnBhdGNoCkBAIC0wLDAgKzEsMjggQEAKK0Zyb20gYzJmYzYyMmI3NzFmNjc5ZThmNTUwNjBhYzYw
Y2ZlMDJiOWE4MDk5NSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKK0Zyb206IEZlbGl4IEZpZXRr
YXUgPG5iZEBuYmQubmFtZT4KK0RhdGU6IE1vbiwgMjUgTWF5IDIwMjAgMTM6NDQ6MjAgKzAyMDAK
K1N1YmplY3Q6IFtQQVRDSF0gYmxvYm1zZzogZml4IGxlbmd0aCBpbiBibG9ibXNnX2NoZWNrX2Fy
cmF5CisKK2Jsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuIGV4cGVjdHMgdGhlIGxlbmd0aCBvZiB0aGUg
ZnVsbCBhdHRyaWJ1dGUgYnVmZmVyLAorbm90IGp1c3QgdGhlIGRhdGEgbGVuZ3RoLgorRHVlIHRv
IG90aGVyIG1pc3NpbmcgbGVuZ3RoIGNoZWNrcyAoZml4ZWQgaW4gdGhlIG5leHQgY29tbWl0KSwg
dGhpcyBkaWQKK25vdCBzaG93IHVwIGFzIGEgdGVzdCBmYWlsdXJlCisKK1NpZ25lZC1vZmYtYnk6
IEZlbGl4IEZpZXRrYXUgPG5iZEBuYmQubmFtZT4KKy0tLQorIGJsb2Jtc2cuYyB8IDIgKy0KKyAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKKworZGlmZiAtLWdp
dCBhL2Jsb2Jtc2cuYyBiL2Jsb2Jtc2cuYworaW5kZXggNTkwNDVlMS4uZGFhYTlmYyAxMDA2NDQK
Ky0tLSBhL2Jsb2Jtc2cuYworKysrIGIvYmxvYm1zZy5jCitAQCAtMTE0LDcgKzExNCw3IEBAIGJv
b2wgYmxvYm1zZ19jaGVja19hdHRyX2xlbihjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBi
b29sIG5hbWUsIHNpemVfdCBsZW4pCisgCisgaW50IGJsb2Jtc2dfY2hlY2tfYXJyYXkoY29uc3Qg
c3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgaW50IHR5cGUpCisgeworLQlyZXR1cm4gYmxvYm1zZ19j
aGVja19hcnJheV9sZW4oYXR0ciwgdHlwZSwgYmxvYl9sZW4oYXR0cikpOworKwlyZXR1cm4gYmxv
Ym1zZ19jaGVja19hcnJheV9sZW4oYXR0ciwgdHlwZSwgYmxvYl9yYXdfbGVuKGF0dHIpKTsKKyB9
CisgCisgaW50IGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuKGNvbnN0IHN0cnVjdCBibG9iX2F0dHIg
KmF0dHIsIGludCB0eXBlLApkaWZmIC0tZ2l0IGEvcGFja2FnZS9saWJzL2xpYnVib3gvcGF0Y2hl
cy8wMDIwLWJsb2Jtc2ctc2ltcGxpZnktYW5kLWZpeC1uYW1lLWxlbmd0aC1jaGVja3MtaW4tYmxv
Ym0ucGF0Y2ggYi9wYWNrYWdlL2xpYnMvbGlidWJveC9wYXRjaGVzLzAwMjAtYmxvYm1zZy1zaW1w
bGlmeS1hbmQtZml4LW5hbWUtbGVuZ3RoLWNoZWNrcy1pbi1ibG9ibS5wYXRjaApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi5hNDgxMjA4Nzg5Ci0tLSAvZGV2L251bGwKKysr
IGIvcGFja2FnZS9saWJzL2xpYnVib3gvcGF0Y2hlcy8wMDIwLWJsb2Jtc2ctc2ltcGxpZnktYW5k
LWZpeC1uYW1lLWxlbmd0aC1jaGVja3MtaW4tYmxvYm0ucGF0Y2gKQEAgLTAsMCArMSw0OSBAQAor
RnJvbSA2MzljMjlkMTk3MTc2MTZiODA5ZDlhMWU5MDQyNDYxYWI4MDI0MzcwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQorRnJvbTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgorRGF0ZTog
TW9uLCAyNSBNYXkgMjAyMCAxNDo0OTozNSArMDIwMAorU3ViamVjdDogW1BBVENIXSBibG9ibXNn
OiBzaW1wbGlmeSBhbmQgZml4IG5hbWUgbGVuZ3RoIGNoZWNrcyBpbgorIGJsb2Jtc2dfY2hlY2tf
bmFtZQorCitibG9ibXNnX2hkcl92YWxpZF9uYW1lbGVuIHdhcyBvbWl0dGVkIHdoZW4gbmFtZT09
ZmFsc2UKK1RoZSBibG9iX2xlbiB2cyBibG9ibXNnX25hbWVsZW4gY2hhbmdlcyB3ZXJlIG5vdCB0
YWtpbmcgaW50byBhY2NvdW50Citwb3RlbnRpYWwgcGFkZGluZyBiZXR3ZWVuIG5hbWUgYW5kIGRh
dGEKKworU2lnbmVkLW9mZi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgorLS0tCisg
YmxvYm1zZy5jIHwgMTMgKysrKy0tLS0tLS0tLQorIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDkgZGVsZXRpb25zKC0pCisKK2RpZmYgLS1naXQgYS9ibG9ibXNnLmMgYi9ibG9ibXNn
LmMKK2luZGV4IGRhYWE5ZmMuLjMwOGJlZjcgMTAwNjQ0CistLS0gYS9ibG9ibXNnLmMKKysrKyBi
L2Jsb2Jtc2cuYworQEAgLTQ4LDggKzQ4LDggQEAgc3RhdGljIGJvb2wgYmxvYm1zZ19oZHJfdmFs
aWRfbmFtZWxlbihjb25zdCBzdHJ1Y3QgYmxvYm1zZ19oZHIgKmhkciwgc2l6ZV90IGxlbikKKyAK
KyBzdGF0aWMgYm9vbCBibG9ibXNnX2NoZWNrX25hbWUoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAq
YXR0ciwgc2l6ZV90IGxlbiwgYm9vbCBuYW1lKQorIHsKKy0JY2hhciAqbGltaXQgPSAoY2hhciAq
KSBhdHRyICsgbGVuOworIAljb25zdCBzdHJ1Y3QgYmxvYm1zZ19oZHIgKmhkcjsKKysJdWludDE2
X3QgbmFtZWxlbjsKKyAKKyAJaGRyID0gYmxvYm1zZ19oZHJfZnJvbV9ibG9iKGF0dHIsIGxlbik7
CisgCWlmICghaGRyKQorQEAgLTU4LDE2ICs1OCwxMSBAQCBzdGF0aWMgYm9vbCBibG9ibXNnX2No
ZWNrX25hbWUoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgc2l6ZV90IGxlbiwgYm9vbCBu
YQorIAlpZiAobmFtZSAmJiAhaGRyLT5uYW1lbGVuKQorIAkJcmV0dXJuIGZhbHNlOworIAorLQlp
ZiAobmFtZSAmJiAhYmxvYm1zZ19oZHJfdmFsaWRfbmFtZWxlbihoZHIsIGxlbikpCistCQlyZXR1
cm4gZmFsc2U7CistCistCWlmICgoY2hhciAqKSBoZHItPm5hbWUgKyBibG9ibXNnX25hbWVsZW4o
aGRyKSArIDEgPiBsaW1pdCkKKy0JCXJldHVybiBmYWxzZTsKKy0KKy0JaWYgKGJsb2Jtc2dfbmFt
ZWxlbihoZHIpID4gKGJsb2JfbGVuKGF0dHIpIC0gc2l6ZW9mKHN0cnVjdCBibG9ibXNnX2hkcikp
KQorKwluYW1lbGVuID0gYmxvYm1zZ19uYW1lbGVuKGhkcik7CisrCWlmIChibG9iX2xlbihhdHRy
KSA8IChzaXplX3QpYmxvYm1zZ19oZHJsZW4obmFtZWxlbikpCisgCQlyZXR1cm4gZmFsc2U7Cisg
CistCWlmIChoZHItPm5hbWVbYmxvYm1zZ19uYW1lbGVuKGhkcildICE9IDApCisrCWlmIChoZHIt
Pm5hbWVbbmFtZWxlbl0gIT0gMCkKKyAJCXJldHVybiBmYWxzZTsKKyAKKyAJcmV0dXJuIHRydWU7
CmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvbGlidWJveC9wYXRjaGVzLzAwMjEtYmxvYm1zZy1m
aXgtbWlzc2luZy1sZW5ndGgtY2hlY2tzLnBhdGNoIGIvcGFja2FnZS9saWJzL2xpYnVib3gvcGF0
Y2hlcy8wMDIxLWJsb2Jtc2ctZml4LW1pc3NpbmctbGVuZ3RoLWNoZWNrcy5wYXRjaApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi5iZmM0NDBhMzI5Ci0tLSAvZGV2L251bGwK
KysrIGIvcGFja2FnZS9saWJzL2xpYnVib3gvcGF0Y2hlcy8wMDIxLWJsb2Jtc2ctZml4LW1pc3Np
bmctbGVuZ3RoLWNoZWNrcy5wYXRjaApAQCAtMCwwICsxLDEzOCBAQAorRnJvbSA2NjE5NWFlZTUw
NDI0Y2JkYTBjMmQ4NTgwMTRlNGNjNThhMmRjMDI5IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQor
RnJvbTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgorRGF0ZTogTW9uLCAyNSBNYXkgMjAy
MCAxMjo0MDowNCArMDIwMAorU3ViamVjdDogW1BBVENIXSBibG9ibXNnOiBmaXggbWlzc2luZyBs
ZW5ndGggY2hlY2tzCisKK2Jsb2Jtc2dfY2hlY2tfYXR0cl9sZW4gd2FzIGNhbGxpbmcgYmxvYm1z
Z19jaGVja19kYXRhIGZvciBzb21lLCBidXQgbm90IGFsbAorYXR0cmlidXRlIHR5cGVzLiBUaGVz
ZSBjaGVja3Mgd2FzIG1pc3NpbmcgZm9yIGFycmF5cyBhbmQgdGFibGVzLgorCitBZGRpdGlvbmFs
bHksIHRoZSBsZW5ndGggY2hlY2sgaW4gYmxvYm1zZ19jaGVja19kYXRhIHdhcyBhIGJpdCBvZmYs
IHNpbmNlCitpdCB3YXMgY29tcGFyaW5nIHRoZSBibG9ibXNnIGRhdGEgbGVuZ3RoIGFnYWluc3Qg
dGhlIHJhdyBibG9iIGF0dHIgbGVuZ3RoLgorCitGaXggdGhpcyBieSBjaGVja2luZyB0aGUgcmF3
IGJsb2IgbGVuZ3RoIGFnYWluc3QgdGhlIGJ1ZmZlciBsZW5ndGggaW4KK2Jsb2Jtc2dfaGRyX2Zy
b21fYmxvYgorCitTaWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cist
LS0KKyBibG9ibXNnLmMgfCA2NiArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCisgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDQ2
IGRlbGV0aW9ucygtKQorCitkaWZmIC0tZ2l0IGEvYmxvYm1zZy5jIGIvYmxvYm1zZy5jCitpbmRl
eCAzMDhiZWY3Li43ZGE0MTgzIDEwMDY0NAorLS0tIGEvYmxvYm1zZy5jCisrKysgYi9ibG9ibXNn
LmMKK0BAIC0zMCwzMSArMzAsMTggQEAgYm9vbCBibG9ibXNnX2NoZWNrX2F0dHIoY29uc3Qgc3Ry
dWN0IGJsb2JfYXR0ciAqYXR0ciwgYm9vbCBuYW1lKQorIAlyZXR1cm4gYmxvYm1zZ19jaGVja19h
dHRyX2xlbihhdHRyLCBuYW1lLCBibG9iX3Jhd19sZW4oYXR0cikpOworIH0KKyAKKy1zdGF0aWMg
Y29uc3Qgc3RydWN0IGJsb2Jtc2dfaGRyKiBibG9ibXNnX2hkcl9mcm9tX2Jsb2IoY29uc3Qgc3Ry
dWN0IGJsb2JfYXR0ciAqYXR0ciwgc2l6ZV90IGxlbikKKy17CistCWlmIChsZW4gPCBzaXplb2Yo
c3RydWN0IGJsb2JfYXR0cikgKyBzaXplb2Yoc3RydWN0IGJsb2Jtc2dfaGRyKSkKKy0JCXJldHVy
biBOVUxMOworLQorLQlyZXR1cm4gYmxvYl9kYXRhKGF0dHIpOworLX0KKy0KKy1zdGF0aWMgYm9v
bCBibG9ibXNnX2hkcl92YWxpZF9uYW1lbGVuKGNvbnN0IHN0cnVjdCBibG9ibXNnX2hkciAqaGRy
LCBzaXplX3QgbGVuKQorLXsKKy0JaWYgKGxlbiA8IHNpemVvZihzdHJ1Y3QgYmxvYl9hdHRyKSAr
IHNpemVvZihzdHJ1Y3QgYmxvYm1zZ19oZHIpICsgYmxvYm1zZ19uYW1lbGVuKGhkcikgKyAxKQor
LQkJcmV0dXJuIGZhbHNlOworLQorLQlyZXR1cm4gdHJ1ZTsKKy19CistCistc3RhdGljIGJvb2wg
YmxvYm1zZ19jaGVja19uYW1lKGNvbnN0IHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIHNpemVfdCBs
ZW4sIGJvb2wgbmFtZSkKKytzdGF0aWMgYm9vbCBibG9ibXNnX2NoZWNrX25hbWUoY29uc3Qgc3Ry
dWN0IGJsb2JfYXR0ciAqYXR0ciwgYm9vbCBuYW1lKQorIHsKKyAJY29uc3Qgc3RydWN0IGJsb2Jt
c2dfaGRyICpoZHI7CisgCXVpbnQxNl90IG5hbWVsZW47CisgCistCWhkciA9IGJsb2Jtc2dfaGRy
X2Zyb21fYmxvYihhdHRyLCBsZW4pOworLQlpZiAoIWhkcikKKysJaWYgKCFibG9iX2lzX2V4dGVu
ZGVkKGF0dHIpKQorKwkJcmV0dXJuICFuYW1lOworKworKwlpZiAoYmxvYl9sZW4oYXR0cikgPCBz
aXplb2Yoc3RydWN0IGJsb2Jtc2dfaGRyKSkKKyAJCXJldHVybiBmYWxzZTsKKyAKKysJaGRyID0g
KGNvbnN0IHN0cnVjdCBibG9ibXNnX2hkciAqKWJsb2JfZGF0YShhdHRyKTsKKyAJaWYgKG5hbWUg
JiYgIWhkci0+bmFtZWxlbikKKyAJCXJldHVybiBmYWxzZTsKKyAKK0BAIC02OCwyOSArNTUsMjAg
QEAgc3RhdGljIGJvb2wgYmxvYm1zZ19jaGVja19uYW1lKGNvbnN0IHN0cnVjdCBibG9iX2F0dHIg
KmF0dHIsIHNpemVfdCBsZW4sIGJvb2wgbmEKKyAJcmV0dXJuIHRydWU7CisgfQorIAorLXN0YXRp
YyBjb25zdCBjaGFyKiBibG9ibXNnX2NoZWNrX2RhdGEoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAq
YXR0ciwgc2l6ZV90IGxlbiwgc2l6ZV90ICpkYXRhX2xlbikKKy17CistCWNoYXIgKmxpbWl0ID0g
KGNoYXIgKikgYXR0ciArIGxlbjsKKy0JY29uc3QgY2hhciAqZGF0YTsKKy0KKy0JKmRhdGFfbGVu
ID0gYmxvYm1zZ19kYXRhX2xlbihhdHRyKTsKKy0JaWYgKCpkYXRhX2xlbiA+IGJsb2JfcmF3X2xl
bihhdHRyKSkKKy0JCXJldHVybiBOVUxMOworLQorLQlkYXRhID0gYmxvYm1zZ19kYXRhKGF0dHIp
OworLQlpZiAoZGF0YSArICpkYXRhX2xlbiA+IGxpbWl0KQorLQkJcmV0dXJuIE5VTEw7CistCist
CXJldHVybiBkYXRhOworLX0KKy0KKyBib29sIGJsb2Jtc2dfY2hlY2tfYXR0cl9sZW4oY29uc3Qg
c3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgYm9vbCBuYW1lLCBzaXplX3QgbGVuKQorIHsKKyAJY29u
c3QgY2hhciAqZGF0YTsKKyAJc2l6ZV90IGRhdGFfbGVuOworIAlpbnQgaWQ7CisgCistCWlmICgh
YmxvYm1zZ19jaGVja19uYW1lKGF0dHIsIGxlbiwgbmFtZSkpCisrCWlmIChsZW4gPCBzaXplb2Yo
c3RydWN0IGJsb2JfYXR0cikpCisrCQlyZXR1cm4gZmFsc2U7CisrCisrCWRhdGFfbGVuID0gYmxv
Yl9yYXdfbGVuKGF0dHIpOworKwlpZiAoZGF0YV9sZW4gPCBzaXplb2Yoc3RydWN0IGJsb2JfYXR0
cikgfHwgZGF0YV9sZW4gPiBsZW4pCisrCQlyZXR1cm4gZmFsc2U7CisrCisrCWlmICghYmxvYm1z
Z19jaGVja19uYW1lKGF0dHIsIG5hbWUpKQorIAkJcmV0dXJuIGZhbHNlOworIAorIAlpZCA9IGJs
b2JfaWQoYXR0cik7CitAQCAtMTAwLDkgKzc4LDggQEAgYm9vbCBibG9ibXNnX2NoZWNrX2F0dHJf
bGVuKGNvbnN0IHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIGJvb2wgbmFtZSwgc2l6ZV90IGxlbikK
KyAJaWYgKCFibG9iX3R5cGVbaWRdKQorIAkJcmV0dXJuIHRydWU7CisgCistCWRhdGEgPSBibG9i
bXNnX2NoZWNrX2RhdGEoYXR0ciwgbGVuLCAmZGF0YV9sZW4pOworLQlpZiAoIWRhdGEpCistCQly
ZXR1cm4gZmFsc2U7CisrCWRhdGEgPSBibG9ibXNnX2RhdGEoYXR0cik7CisrCWRhdGFfbGVuID0g
YmxvYm1zZ19kYXRhX2xlbihhdHRyKTsKKyAKKyAJcmV0dXJuIGJsb2JfY2hlY2tfdHlwZShkYXRh
LCBkYXRhX2xlbiwgYmxvYl90eXBlW2lkXSk7CisgfQorQEAgLTIwNiwxMyArMTgzLDEzIEBAIGlu
dCBibG9ibXNnX3BhcnNlKGNvbnN0IHN0cnVjdCBibG9ibXNnX3BvbGljeSAqcG9saWN5LCBpbnQg
cG9saWN5X2xlbiwKKyAJfQorIAorIAlfX2Jsb2JfZm9yX2VhY2hfYXR0cihhdHRyLCBkYXRhLCBs
ZW4pIHsKKy0JCWhkciA9IGJsb2Jtc2dfaGRyX2Zyb21fYmxvYihhdHRyLCBsZW4pOworLQkJaWYg
KCFoZHIpCisrCQlpZiAoIWJsb2Jtc2dfY2hlY2tfYXR0cl9sZW4oYXR0ciwgZmFsc2UsIGxlbikp
CisgCQkJcmV0dXJuIC0xOworIAorLQkJaWYgKCFibG9ibXNnX2hkcl92YWxpZF9uYW1lbGVuKGhk
ciwgbGVuKSkKKy0JCQlyZXR1cm4gLTE7CisrCQlpZiAoIWJsb2JfaXNfZXh0ZW5kZWQoYXR0cikp
CisrCQkJY29udGludWU7CisgCisrCQloZHIgPSBibG9iX2RhdGEoYXR0cik7CisgCQlmb3IgKGkg
PSAwOyBpIDwgcG9saWN5X2xlbjsgaSsrKSB7CisgCQkJaWYgKCFwb2xpY3lbaV0ubmFtZSkKKyAJ
CQkJY29udGludWU7CitAQCAtMjI0LDkgKzIwMSw2IEBAIGludCBibG9ibXNnX3BhcnNlKGNvbnN0
IHN0cnVjdCBibG9ibXNnX3BvbGljeSAqcG9saWN5LCBpbnQgcG9saWN5X2xlbiwKKyAJCQlpZiAo
YmxvYm1zZ19uYW1lbGVuKGhkcikgIT0gcHNsZW5baV0pCisgCQkJCWNvbnRpbnVlOworIAorLQkJ
CWlmICghYmxvYm1zZ19jaGVja19hdHRyX2xlbihhdHRyLCB0cnVlLCBsZW4pKQorLQkJCQlyZXR1
cm4gLTE7CistCisgCQkJaWYgKHRiW2ldKQorIAkJCQljb250aW51ZTsKLS0gCjIuMjYuMgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
