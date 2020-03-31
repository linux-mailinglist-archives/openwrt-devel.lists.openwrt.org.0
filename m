Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 231701991F0
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 11:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jLLimhjB8FAgCsYKxJv0Yl+/7IblD2QA7Sls7uOtjeI=; b=ZYP9VeXP1d24+q
	6oywDKGALj3Pi/cjRRxvaqEpF2CRlHTDMXwGTuptuvwk7uElX5ynXIiny1b7MyC45OCJluEexAvUx
	E9iQ94x8b2JICJ2UdL8QneTcbVgJIMj54IaTy4Ihr6fFabGlCVR+lM3jDVha4QiCG9lmPWbD3985s
	bmFpvqqJbZLeoohdBIyAGof91qql6JN5YGcJ2/iNDkc4ihulve1ppHtgGrnvrWtbcNaTSufaQWGRq
	rU3twg0RnMjqKRv4DfgYMG4IS7kWtnQqmFB6f9I2B5+zeWNjNGxxbGojMHJkTSotS8kdyplWhMuF5
	kOvebHJS8eNek/F4IrJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJD6H-0007jC-3Y; Tue, 31 Mar 2020 09:22:25 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJD5x-0007Sg-TB
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 09:22:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D92EF445B;
 Tue, 31 Mar 2020 11:22:02 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e2637a0f;
 Tue, 31 Mar 2020 11:21:48 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 11:21:58 +0200
Message-Id: <20200331092158.5787-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_022206_093707_1AC06E94 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mvebu,
 tegra: make CPU subtype default to vfp3-d16
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QXJtYWRhIDM3MCBhbmQgVGVncmEyIHByb2Nlc3NvcnMgaGF2ZSBvbmx5IDE2IGRvdWJsZS1wcmVj
aXNpb24KcmVnaXN0ZXJzLiBUaGUgY2hhbmdlIGludHJvZHVjZWQgYnkgY29tbWl0IDhkY2MxMDg3
NjAyZSAoInRvb2xjaGFpbjoKQVJNOiBGaXggdG9vbGNoYWluIGNvbXBpbGF0aW9uIGZvciBnY2Mg
OC54Iikgc3dpdGNoZWQgYWNjaWRlbnRhbGx5IHRoZQp0b29sY2hhaW4gZm9yIG12ZWJ1IGNvcnRl
eGE5IHN1YnRhcmdldCB0byBjcHUgdHlwZSB3aXRoIDMyCmRvdWJsZS1wcmVjaXNpb24gcmVnaXN0
ZXJzLgoKVGhpcyBzdGVtcyBmcm9tIGdjYyBkZWZhdWx0cyB3aGljaCBhc3N1bWUgInZmcHYzLWQz
MiIgaWYgb25seSAidmZwdjMiIGFzCm1mcHUgaXMgc3BlY2lmaWVkLiBUaGF0IGNoYW5nZSByZXN1
bHRlZCBpbiB1bnVzYWJsZSBpbWFnZSwgaW4gd2hpY2gKa2VybmVsIHdpbGwga2lsbCB1c2Vyc3Bh
Y2UgYXMgc29vbiBhcyBpdCBjYXVzaW5nICJJbGxlZ2FsIGluc3RydWN0aW9uIi4KCkluIG9yZGVy
IHRvIGZpeCB0aG9zZSBpc3N1ZXMgVG9tYXMgaW4gY29tbWl0IDJkNjFmODgyMWM3YyAoIm12ZWJ1
Ogpjb3J0ZXhhOTogY29ycmVjdCBjcHUgc3VidHlwZSIpIGFuZCBjb21taXQgNDNkMWQ4ODUxMDYy
ICgidGVncmE6IGNvcnJlY3QKY3B1IHN1YnR5cGUiKSBjaGFuZ2VkIHRoZSBDUFUgc3VidHlwZSB0
byBleHBsaWNpdCB2ZnB2My1kMTYgd2hpY2ggZml4ZWQKdGhlIGFib3ZlIG1lbnRpb25lZCBpc3N1
ZSwgYnV0IG9uIHRoZSBvdGhlciBlbmQgaXQgaGFzIHJlc3VsdGVkIGluIHRoZQpuZWVkIG9mIGJ1
aWxkaW5nIHBhY2thZ2VzIGZvciB0aGlzIG5ldyBDUFUgc3VidHlwZSB3aGljaCBpcyBub3Qgd2Fu
dGVkCmR1ZSB0byB0aGUgaW5jcmVhc2VkIGluZnJhc3RydWN0dXJlIGNvc3RzLCBsaWtlIGRpc2sg
c3BhY2UgYW5kCmFkZGl0aW9uYWwgYnVpbGQgdGltZSB3aGljaCBpcyBodWdlIGZvciBwYWNrYWdl
cyBmZWVkLgoKU28gbGV0cyBqdXN0IHRha2UgYSBzdGVwIGJhY2sgYW5kIG1ha2UgdGhlIHZmcDMt
ZDE2IGV4cGxpY2l0IGFnYWluLgoKQ2M6IFRvbWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIu
cGw+CkNjOiBDaHJpc3RpYW4gTGFtcGFydGVyIDxjaHVua2VleUBnbWFpbC5jb20+ClJlcG9ydGVk
LWJ5OiBQYXVsIFNwb29yZW4gPG1haWxAYXBhcmNhci5vcmc+CkZpeGVzOiA0M2QxZDg4NTEwNjIg
KCJ0ZWdyYTogY29ycmVjdCBjcHUgc3VidHlwZSIpCkZpeGVzOiAyZDYxZjg4MjFjN2MgKCJtdmVi
dTogY29ydGV4YTk6IGNvcnJlY3QgY3B1IHN1YnR5cGUiKQpGaXhlczogOGRjYzEwODc2MDJlICgi
dG9vbGNoYWluOiBBUk06IEZpeCB0b29sY2hhaW4gY29tcGlsYXRpb24gZm9yIGdjYyA4LngiKQpT
aWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIGluY2x1ZGUv
dGFyZ2V0Lm1rICAgICAgICAgICAgICAgICAgICAgfCAzICsrKwogdGFyZ2V0L2xpbnV4L212ZWJ1
L2NvcnRleGE5L3RhcmdldC5tayB8IDIgKy0KIHRhcmdldC9saW51eC90ZWdyYS9NYWtlZmlsZSAg
ICAgICAgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3RhcmdldC5tayBiL2luY2x1ZGUvdGFyZ2V0
Lm1rCmluZGV4IDliZDRjMTQ5MzZjMS4uOTRlYTFhOWUwMDAxIDEwMDY0NAotLS0gYS9pbmNsdWRl
L3RhcmdldC5taworKysgYi9pbmNsdWRlL3RhcmdldC5tawpAQCAtMTc5LDYgKzE3OSw5IEBAIGlm
ZXEgKCQoRFVNUCksMSkKICAgZW5kaWYKICAgaWZuZXEgKCQoZmluZHN0cmluZyBhcm0sJChBUkNI
KSksKQogICAgIENQVV9UWVBFID89IHhzY2FsZQorICAgIGlmZXEgKCQoQ09ORklHX1NPRlRfRkxP
QVQpLCkKKyAgICAgIENQVV9DRkxBR1NfdmZwdjMgPSAtbWZwdT12ZnB2My1kMTYKKyAgICBlbmRp
ZgogICBlbmRpZgogICBpZmVxICgkKEFSQ0gpLHBvd2VycGMpCiAgICAgQ1BVX0NGTEFHU182MDNl
Oj0tbWNwdT02MDNlCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvY29ydGV4YTkvdGFy
Z2V0Lm1rIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE5L3RhcmdldC5tawppbmRleCBjZGQ0
ZDg2ZTQ5MzYuLjJhNzU1OTliYzlhMyAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2Nv
cnRleGE5L3RhcmdldC5taworKysgYi90YXJnZXQvbGludXgvbXZlYnUvY29ydGV4YTkvdGFyZ2V0
Lm1rCkBAIC0xMCw1ICsxMCw1IEBAIGluY2x1ZGUgJChUT1BESVIpL3J1bGVzLm1rCiBBUkNIOj1h
cm0KIEJPQVJETkFNRTo9TWFydmVsbCBBcm1hZGEgMzd4LzM4eC9YUAogQ1BVX1RZUEU6PWNvcnRl
eC1hOQotQ1BVX1NVQlRZUEU6PXZmcHYzLWQxNgorQ1BVX1NVQlRZUEU6PXZmcHYzCiBLRVJORUxO
QU1FOj16SW1hZ2UgZHRicwpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3RlZ3JhL01ha2VmaWxl
IGIvdGFyZ2V0L2xpbnV4L3RlZ3JhL01ha2VmaWxlCmluZGV4IDVkZDRkNDM5ODQ5ZS4uMGI0OGZj
MTZiYWEyIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvdGVncmEvTWFrZWZpbGUKKysrIGIvdGFy
Z2V0L2xpbnV4L3RlZ3JhL01ha2VmaWxlCkBAIC0xMSw3ICsxMSw3IEBAIEJPQVJEIDo9IHRlZ3Jh
CiBCT0FSRE5BTUUgOj0gTlZJRElBIFRlZ3JhCiBGRUFUVVJFUyA6PSBhdWRpbyBib290LXBhcnQg
ZGlzcGxheSBleHQ0IGZwdSBncGlvIHBjaSBwY2llIHJvb3Rmcy1wYXJ0IHJ0YyBzcXVhc2hmcyB1
c2IKIENQVV9UWVBFIDo9IGNvcnRleC1hOQotQ1BVX1NVQlRZUEUgOj0gdmZwdjMtZDE2CitDUFVf
U1VCVFlQRSA6PSB2ZnB2MwogCiBLRVJORUxfUEFUQ0hWRVIgOj0gNS40CiBLRVJORUxfVEVTVElO
R19QQVRDSFZFUiA6PSA1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
