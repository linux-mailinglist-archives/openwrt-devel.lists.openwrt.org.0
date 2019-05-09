Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A35C18F1E
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 19:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTaNlqVh0Bp2dGKUACTQJ83qeI7ts3en+E9E7dZHSCk=; b=ot3DIjXBeLimfN
	Ddz/LK2NtTMK49r2va8wILGLd22U+V1WzDZm6yHCTEXRTnWYQZEi49t3Yxt2cmSMJyhzeYEMVoF3L
	25l72dwJCSVu5jhWAhDQkuG0BVA8G8GHJLQX3lAegEB/25OLhQAyn0BPhyxGRccrRu0sM5yckpRiV
	gJtkPqWHV/yOguaTifo7fF79a4oPo7PFH9IfhM/8ytUwL9PhlDGSKZMsWNIzMRvqhxeFjEuO03rKW
	mcHt5aalRfxzpmcHhrv6YTHQgJoGO+v0mi8OpfgFweifoS8SpjKVCy9mziEs+fjod5IZU/S0J0qwd
	VUnNxLn+Yr55qx74cC+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOmqa-000233-W8; Thu, 09 May 2019 17:28:45 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOmqS-00022H-Tu
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 17:28:39 +0000
Received: (wp-smtpd smtp.tlen.pl 27562 invoked from network);
 9 May 2019 19:28:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557422912; bh=WivmBUJzJmukp5PFDxN85TvV1WGi3EFHxh+nDd3n35U=;
 h=Subject:To:Cc:From;
 b=euoK7re5Fsrj5MkxmDE+ZYa7HlXDIcCdEdL7+JH4yixFVIgxup4HOK0MMgEnClrzD
 ZqBm9Vd/HIc/i0Lf68AkOf2+PU4A+T/myeG+6K15WRvvkcJ042y3XS+L1ys4L79zJu
 1lZ/JOG8ATBy6xctLo8f1pIJq6t10BRJzQefjMcQ=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <robimarko@gmail.com>; 9 May 2019 19:28:32 +0200
To: Jeff Kletsky <lede@allycomm.com>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
References: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
 <CAOX2RU4Ae_GRq+_P1RGt0=BgnodSfoT_uHkjZxTwsf5mPobLgg@mail.gmail.com>
 <5a135cb6-bb49-ee37-a4d4-85911fc9b667@allycomm.com>
 <20190509100439.GQ81826@meh.true.cz>
 <f73cbf9f-19c6-0273-6d64-e538a3c64dac@allycomm.com>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <458ea6ef-3031-d2c9-34b8-c06c80e57158@o2.pl>
Date: Thu, 9 May 2019 19:28:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f73cbf9f-19c6-0273-6d64-e538a3c64dac@allycomm.com>
Content-Language: en-US
X-WP-MailID: 8fa6cd2b9c00754788303600c0b206b3
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [IaM1]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_102837_353651_C506FBF0 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Build system puzzles: PCI_SUPPORT not being set
 for subtarget
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgSmVmZiwKClcgZG5pdSAwOS4wNS4yMDE5IG/CoDE4OjI1LCBKZWZmIEtsZXRza3kgcGlzemU6
Cj4gT24gNS85LzE5IDEyOjA0IFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IAo+PiBKZWZmIEts
ZXRza3kgPGxlZGVAYWxseWNvbW0uY29tPiBbMjAxOS0wNS0wOSAxMToyMzoxOF06Cj4+Cj4+PiBJ
IHJlY29uZmlybWVkIHRoYXQKPj4+Cj4+PiDCoMKgIG9wZW53cnQvdGFyZ2V0L2xpbnV4L2F0aDc5
JCBjcCBnZW5lcmljL2NvbmZpZy1kZWZhdWx0IG5hbmQvY29uZmlnLWRlZmF1bHQKPj4+IMKgwqAg
b3BlbndydCQgY2F0IC9kZXYvbnVsbCA+IC5jb25maWcKPj4+IMKgwqAgb3BlbndydCQgbWFrZSBt
ZW51Y29uZmlnCj4+Pgo+Pj4gaGFzIHRoZSBzYW1lIGJlaGF2aW9yIC0tIHRoZSBuYW5kIHRhcmdl
dCBkb2VzIG5vdCBzZXQgUENJX1NVUFBPUlQKPj4gaXQgd29ya3MgaGVyZSh0bSk6Cj4+Cj4+IMKg
IENPTkZJR19UQVJHRVRfYXRoNzk9eQo+PiDCoCBDT05GSUdfVEFSR0VUX2F0aDc5X25hbmQ9eQo+
PiDCoCBDT05GSUdfVEFSR0VUX2F0aDc5X25hbmRfREVWSUNFX2dsaW5ldF9nbC1hcjMwMG0tbmFu
ZD15Cj4+IMKgIENPTkZJR19BVEgxMEstQ1RfTEVEUz15Cj4+IMKgIENPTkZJR19EUklWRVJfMTFB
Q19TVVBQT1JUPXkKPj4gwqAgQ09ORklHX1BBQ0tBR0Vfa21vZC1hdGgxMGstY3Q9eQo+PiDCoCBD
T05GSUdfUEFDS0FHRV9rbW9kLWh3bW9uLWNvcmU9eQo+Pgo+PiAtLSB5bmV6ego+IAo+IFdoYXQg
SSdtIHNlZWluZyBpcyB0aGF0IGF0aDEwayBnZXRzIHN0cmlwcGVkIG91dCBmb3IgbmFuZCwKPiBi
dXQgbm90IGZvciBub3IuIEkgcmFuICJ2aXJnaW4iIHRlc3RzIHdpdGggdGhlIHNjcmlwdHMgYmVs
b3csCj4gd2l0aCB0aGUgc2FtZSBjb25maWctZGVmYXVsdCBpbiBib3RoIGdlbmVyaWMvIGFuZCBu
YW5kLy4KCkkgZGlkIHJ1biBZb3VyIHNjcmlwdCBmb3IgbmFuZCBhbmQgdGhpcyBpcyB0aGUgb3V0
cHV0IChyZW1vdmVkIGZlZWRzIHRvIHNwZWVkLXVwKToKClt0b21la0B2YWlvLXZwY3oxIG9wZW53
cnRdJCAuL3Rlc3Quc2gKQ2xvbmluZyBpbnRvICdvcGVud3J0LW5hbmQtdGVzdCcuLi4KcmVtb3Rl
OiBFbnVtZXJhdGluZyBvYmplY3RzOiA0NjI1MTgsIGRvbmUuCnJlbW90ZTogQ291bnRpbmcgb2Jq
ZWN0czogMTAwJSAoNDYyNTE4LzQ2MjUxOCksIGRvbmUuCnJlbW90ZTogQ29tcHJlc3Npbmcgb2Jq
ZWN0czogMTAwJSAoMTI3MTQ4LzEyNzE0OCksIGRvbmUuCnJlbW90ZTogVG90YWwgNDYyNTE4IChk
ZWx0YSAzMTk3MzQpLCByZXVzZWQgNDU3NTUyIChkZWx0YSAzMTU2NjIpClJlY2VpdmluZyBvYmpl
Y3RzOiAxMDAlICg0NjI1MTgvNDYyNTE4KSwgMTQ0LjM1IE1pQiB8IDUuMzcgTWlCL3MsIGRvbmUu
ClJlc29sdmluZyBkZWx0YXM6IDEwMCUgKDMxOTczNC8zMTk3MzQpLCBkb25lLgpDT05GSUdfUEFD
S0FHRV9rbW9kLWF0aDEway1jdD15CgoKPT09PT0KCid0YXJnZXQvbGludXgvYXRoNzkvZ2VuZXJp
Yy9jb25maWctZGVmYXVsdCcgLT4gJ3RhcmdldC9saW51eC9hdGg3OS9uYW5kL2NvbmZpZy1kZWZh
dWx0JwpDaGVja2luZyAnd29ya2luZy1tYWtlJy4uLiBvay4KQ2hlY2tpbmcgJ2Nhc2Utc2Vuc2l0
aXZlLWZzJy4uLiBvay4KQ2hlY2tpbmcgJ3Byb3Blci11bWFzaycuLi4gb2suCkNoZWNraW5nICdn
Y2MnLi4uIG9rLgpDaGVja2luZyAnd29ya2luZy1nY2MnLi4uIG9rLgpDaGVja2luZyAnZysrJy4u
LiBvay4KQ2hlY2tpbmcgJ3dvcmtpbmctZysrJy4uLiBvay4KQ2hlY2tpbmcgJ25jdXJzZXMnLi4u
IG9rLgpDaGVja2luZyAncGVybC10aHJlYWQtcXVldWUnLi4uIG9rLgpDaGVja2luZyAndGFyJy4u
LiBvay4KQ2hlY2tpbmcgJ2ZpbmQnLi4uIG9rLgpDaGVja2luZyAnYmFzaCcuLi4gb2suCkNoZWNr
aW5nICdwYXRjaCcuLi4gb2suCkNoZWNraW5nICdkaWZmJy4uLiBvay4KQ2hlY2tpbmcgJ2NwJy4u
LiBvay4KQ2hlY2tpbmcgJ3NlcScuLi4gb2suCkNoZWNraW5nICdhd2snLi4uIG9rLgpDaGVja2lu
ZyAnZ3JlcCcuLi4gb2suCkNoZWNraW5nICdnZXRvcHQnLi4uIG9rLgpDaGVja2luZyAnc3RhdCcu
Li4gb2suCkNoZWNraW5nICd1bnppcCcuLi4gb2suCkNoZWNraW5nICdiemlwMicuLi4gb2suCkNo
ZWNraW5nICd3Z2V0Jy4uLiBvay4KQ2hlY2tpbmcgJ3BlcmwnLi4uIG9rLgpDaGVja2luZyAncHl0
aG9uJy4uLiBvay4KQ2hlY2tpbmcgJ2dpdCcuLi4gb2suCkNoZWNraW5nICdmaWxlJy4uLiBvay4K
Q2hlY2tpbmcgJ2xkY29uZmlnLXN0dWInLi4uIG9rLgpDb2xsZWN0aW5nIHBhY2thZ2UgaW5mbzog
ZG9uZQpDb2xsZWN0aW5nIHRhcmdldCBpbmZvOiBkb25lCldBUk5JTkc6IE1ha2VmaWxlICdwYWNr
YWdlL3V0aWxzL2J1c3lib3gvTWFrZWZpbGUnIGhhcyBhIGRlcGVuZGVuY3kgb24gJ2xpYnBhbScs
CndoaWNoIGRvZXMgbm90IGV4aXN0CldBUk5JTkc6IE1ha2VmaWxlICdwYWNrYWdlL3V0aWxzL2J1
c3lib3gvTWFrZWZpbGUnIGhhcyBhIGJ1aWxkIGRlcGVuZGVuY3kgb24KJ2xpYnBhbScsIHdoaWNo
IGRvZXMgbm90IGV4aXN0CldBUk5JTkc6IE1ha2VmaWxlICdwYWNrYWdlL25ldHdvcmsvdXRpbHMv
Y3VybC9NYWtlZmlsZScgaGFzIGEgZGVwZW5kZW5jeSBvbgonbGliZ251dGxzJywgd2hpY2ggZG9l
cyBub3QgZXhpc3QKV0FSTklORzogTWFrZWZpbGUgJ3BhY2thZ2UvbmV0d29yay91dGlscy9jdXJs
L01ha2VmaWxlJyBoYXMgYSBkZXBlbmRlbmN5IG9uCidsaWJvcGVubGRhcCcsIHdoaWNoIGRvZXMg
bm90IGV4aXN0CldBUk5JTkc6IE1ha2VmaWxlICdwYWNrYWdlL25ldHdvcmsvdXRpbHMvY3VybC9N
YWtlZmlsZScgaGFzIGEgZGVwZW5kZW5jeSBvbgonbGliaWRuMicsIHdoaWNoIGRvZXMgbm90IGV4
aXN0CldBUk5JTkc6IE1ha2VmaWxlICdwYWNrYWdlL25ldHdvcmsvdXRpbHMvY3VybC9NYWtlZmls
ZScgaGFzIGEgZGVwZW5kZW5jeSBvbgonbGlic3NoMicsIHdoaWNoIGRvZXMgbm90IGV4aXN0CldB
Uk5JTkc6IE1ha2VmaWxlICdwYWNrYWdlL2Jvb3Qva2V4ZWMtdG9vbHMvTWFrZWZpbGUnIGhhcyBh
IGRlcGVuZGVuY3kgb24gJ2xpYmx6bWEnLAp3aGljaCBkb2VzIG5vdCBleGlzdApXQVJOSU5HOiBN
YWtlZmlsZSAncGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2xsZHBkL01ha2VmaWxlJyBoYXMgYSBk
ZXBlbmRlbmN5IG9uCidsaWJuZXRzbm1wJywgd2hpY2ggZG9lcyBub3QgZXhpc3QKV0FSTklORzog
TWFrZWZpbGUgJ3BhY2thZ2UvbmV0d29yay91dGlscy9uZnRhYmxlcy9NYWtlZmlsZScgaGFzIGEg
ZGVwZW5kZW5jeSBvbgonamFuc3NvbicsIHdoaWNoIGRvZXMgbm90IGV4aXN0CmNvbmZpZ3VyYXRp
b24gd3JpdHRlbiB0byAuY29uZmlnCgoqKiogRW5kIG9mIHRoZSBjb25maWd1cmF0aW9uLgoqKiog
RXhlY3V0ZSAnbWFrZScgdG8gc3RhcnQgdGhlIGJ1aWxkIG9yIHRyeSAnbWFrZSBoZWxwJy4KCiMg
YXRoMTBrIElQUTQwMTkgQm9hcmRkYXRhCiMgQ09ORklHX1BBQ0tBR0VfYXRoMTBrLWZpcm13YXJl
LXFjYTQwMTkgaXMgbm90IHNldAojIENPTkZJR19QQUNLQUdFX2F0aDEway1maXJtd2FyZS1xY2E0
MDE5LWN0IGlzIG5vdCBzZXQKIyBDT05GSUdfUEFDS0FHRV9hdGgxMGstZmlybXdhcmUtcWNhNDAx
OS1jdC1odHQgaXMgbm90IHNldAojIENPTkZJR19QQUNLQUdFX2F0aDEway1maXJtd2FyZS1xY2E2
MTc0IGlzIG5vdCBzZXQKIyBDT05GSUdfUEFDS0FHRV9hdGgxMGstZmlybXdhcmUtcWNhOTg4NyBp
cyBub3Qgc2V0CiMgQ09ORklHX1BBQ0tBR0VfYXRoMTBrLWZpcm13YXJlLXFjYTk4ODctY3QgaXMg
bm90IHNldAojIENPTkZJR19QQUNLQUdFX2F0aDEway1maXJtd2FyZS1xY2E5ODg3LWN0LWh0dCBp
cyBub3Qgc2V0CiMgQ09ORklHX1BBQ0tBR0VfYXRoMTBrLWZpcm13YXJlLXFjYTk4ODggaXMgbm90
IHNldAojIENPTkZJR19QQUNLQUdFX2F0aDEway1maXJtd2FyZS1xY2E5ODg4LWN0IGlzIG5vdCBz
ZXQKIyBDT05GSUdfUEFDS0FHRV9hdGgxMGstZmlybXdhcmUtcWNhOTg4OC1jdC1odHQgaXMgbm90
IHNldAojIENPTkZJR19QQUNLQUdFX2F0aDEway1maXJtd2FyZS1xY2E5ODh4IGlzIG5vdCBzZXQK
IyBDT05GSUdfUEFDS0FHRV9hdGgxMGstZmlybXdhcmUtcWNhOTg4eC1jdCBpcyBub3Qgc2V0CiMg
Q09ORklHX1BBQ0tBR0VfYXRoMTBrLWZpcm13YXJlLXFjYTk4OHgtY3QtaHR0IGlzIG5vdCBzZXQK
IyBDT05GSUdfUEFDS0FHRV9hdGgxMGstZmlybXdhcmUtcWNhOTk4NCBpcyBub3Qgc2V0CiMgQ09O
RklHX1BBQ0tBR0VfYXRoMTBrLWZpcm13YXJlLXFjYTk5ODQtY3QgaXMgbm90IHNldAojIENPTkZJ
R19QQUNLQUdFX2F0aDEway1maXJtd2FyZS1xY2E5OTg0LWN0LWh0dCBpcyBub3Qgc2V0CiMgQ09O
RklHX1BBQ0tBR0VfYXRoMTBrLWZpcm13YXJlLXFjYTk5eDAgaXMgbm90IHNldAojIENPTkZJR19Q
QUNLQUdFX2F0aDEway1maXJtd2FyZS1xY2E5OXgwLWN0IGlzIG5vdCBzZXQKIyBDT05GSUdfUEFD
S0FHRV9hdGgxMGstZmlybXdhcmUtcWNhOTl4MC1jdC1odHQgaXMgbm90IHNldAojIENPTkZJR19Q
QUNLQUdFX2ttb2QtYXRoMTBrIGlzIG5vdCBzZXQKQ09ORklHX1BBQ0tBR0Vfa21vZC1hdGgxMGst
Y3Q9eQoKU28gaXQgYXBwZWFycyB0byB3b3JrLgoKPiBQZXJoYXBzIEkgYW0gbWlzc2luZyBzb21l
dGhpbmcgb3IgbWlzdW5kZXJzdG9vZCwgYnV0IGJlbG93Cj4gaXMgd2hhdCBJJ20gc2VlaW5nIHdp
dGggd2hhdCBJIGludGVycHJldGVkIGFzIC5jb25maWcgc2VlZCBhYm92ZS4KPiAKPiBCb3RoCj4g
Cj4gwqAgIyBDT05GSUdfUEFDS0FHRV9rbW9kLWF0aDEwayBpcyBub3Qgc2V0Cj4gwqAgQ09ORklH
X1BBQ0tBR0Vfa21vZC1hdGgxMGstY3Q9eQo+IAo+IGFyZSBtaXNzaW5nIGZvciB0aGUgbmFuZCBz
dWJ0YXJnZXQuCj4gCj4gCj4gSSdtIHdpbGxpbmcgdG8gdHJhY2sgdGhpcyBkb3duIChhcyBJJ3Zl
IGdvdCBhbiBBUjc1MFMKPiBydW5uaW5nIG9uIE5BTkQsIGluY2x1ZGluZyBzeXN1cGdyYWRlKSwg
YnV0IGF0IGxlYXN0IHNvIGZhcgo+IEkgaGF2ZW4ndCBiZWVuIHN1Y2Nlc3NmdWwgaW4gZ2V0dGlu
ZyBvdXRwdXQgZnJvbQo+IHNjcmlwdHMva2NvbmZpZy5wbCB0byBjb25maXJtIHRoYXQgaXQgaXMg
d2hhdCBpcyBnZW5lcmF0aW5nCj4gdGhlIGNvbmZpZyBmcm9tIHRoZSB2YXJpb3VzIHBpZWNlcyBh
dCB0aGUgZ2VuZXJpYy1MaW51eCwgdGFyZ2V0LAo+IGFuZCBzdWJ0YXJnZXQgbGV2ZWxzLiBJcyB0
aGVyZSBhIGRpZmZlcmVudCBwbGFjZSBJIHNob3VsZAo+IGJlIGxvb2tpbmc/CgpXaGVuIGFkZGlu
ZyBjaGFuZ2VzIHRvIHRhcmdldC9zdWJ0YXJnZXQgY29uZmlnIHNvbWV0aW1lcyBJdCdzIG5lY2Vz
c2FyeSB0byByZW1vdmUKJChUT1BESVIpL3RtcCB0byBzZWUgY2hhbmdlcywgbWF5YmUgdGhhdCdz
IHRoZSBpc3N1ZSBZb3Ugd2VyZSBoaXR0aW5nPwoKUmVnYXJkcwoKLS0gClRNTgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
