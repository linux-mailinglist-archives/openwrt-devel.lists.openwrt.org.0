Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0141F80E0
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 21:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OIzn+u5+02t6n0ESmU4UuTXjxIhzOsGX2+NNCaFSMR8=; b=VG++2G14MZNhu+
	kuVwggrp2sGNE1mBv9UTNZM3LSU5yXznb2PATpYZ/IA0zQQlkQbqXUs7RTAH9uiOvQPwHJ6s+3ABG
	oxvGAtfRnCWhc7ySiiWWw04XDV0HH7QBBV3pL5CYd8wGi0DV9q1MymXvjT7zBlRrFwqwZV32OBFti
	yiOlaEb0gBK3fkCMxFwUuxjq53anV/bJHTp41FjzD+thwHhIOFidIija0O+JCH/lpDLsXbNbZX17X
	gEZ7QURFwhP86Q6pAV7p4y1hXFgkVgVxYo9AH2vi+3gYNOHCPBbzcr9AFmpFwNh3/NAXdgi51FynW
	NayG9aVg1FKZP+mkyZnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUG4h-0003qr-GL; Mon, 11 Nov 2019 20:14:11 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUG4W-0003qF-EZ
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 20:14:02 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 9777244260;
 Mon, 11 Nov 2019 12:13:57 -0800 (PST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <6e375531-edbc-fced-7bcd-8cb04181dda1@allycomm.com>
Date: Mon, 11 Nov 2019 12:13:57 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_121400_494334_22993342 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC] build-system: NAND: Concerns around bad-block
 reservation and kernel / image size
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VEw7RFIKCiDCoCBOQU5ELXJlc2lkZW50IGtlcm5lbHMgc2VlbSBsaWtlbHkgdG8gaGF2ZSBiYWQg
YmxvY2tzIGluIHRoZSBwYXJ0aXRpb24uCgogwqAgYEtFUk5FTF9TSVpFIDo9IDIwNDhrYCBzZWVt
cyBsaWtlbHkgdG8gb3ZlcmZsb3cgYSAyIE1CIHBhcnRpdGlvbgogwqAgdGhhdCBoYXMgZXZlbiBh
IHNpbmdsZSBiYWQgYmxvY2sKCiDCoCBUaGUgYXRoNzktbmFuZCBrZXJuZWwgaXMgYWxyZWFkeSBv
dmVyIDEsOTAwLDAwMCBieXRlcwoKIMKgIFdoYXQgc2hvdWxkIHRoZSBiYWQtYmxvY2sgcmVzZXJ2
YXRpb24gYmUgZm9yIGEgMi1NQiBwYXJ0aXRpb24/CiDCoCBBIDQtTUIgcGFydGl0aW9uPwoKIMKg
IElzIHRoZXJlIGEgd2F5IHRvIGhhbmRsZSAiYmxpdC1pdC1kb3duIiwgImZhY3RvcnkiIGltYWdl
cz8KCiDCoCBXaGF0IGlzIHRoZSBiZXN0IHdheSB0byBpbXBsZW1lbnQgYmFkLWJsb2NrIHJlc2Vy
dmF0aW9uIGluIHRoZSBidWlsZAogwqAgc3lzdGVtIGZvciBrZXJuZWxzIGFuZCBmb3IgaW1hZ2Vz
IGluIGdlbmVyYWw/CgoKLS0tLS0KClBlcmhhcHMgbXkgbWVtb3J5IG9mIHByb2JhYmlsaXR5IGlz
IHBvb3IsIGJ1dCBpdCBzZWVtcyB1bmxpa2VseSB0aGF0CmFsbCB0aGUgYmxvY2tzIGluIGV2ZW4g
YSAyIE1CIGtlcm5lbCBwYXJ0aXRpb24gc3RheSBnb29kIG92ZXIgdGhlIGxpZmUKb2YgYSBkZXZp
Y2UuCgpMb29raW5nIGF0IHR5cGljYWwgU1BJLU5BTkQsIGl0IGhhcyAxMjgga0IgYmxvY2tzLCB3
aXRoIGEgYmFkLWJsb2NrCnJlc2VydmF0aW9uIG9mIDIwLzEwMjQgYmxvY2tzLgoKQSAyIE1CIGtl
cm5lbCB0aGVuIGhhcyAxNiBibG9ja3MsIHNvLCBhc3N1bWluZyByYW5kb20gZmFpbHVyZXMsIHRo
ZQpwcm9iYWJpbGl0eSB0aGF0IHRoZXkgYXJlIGFsbCBnb29kIHdvdWxkIGJlCgogwqDCoMKgICgx
IC0gKDIwLzEwMjQpKV4xNiB+IDczJQoKQSAyNyUgZmFpbHVyZSByYXRlIGZvciBkZXZpY2VzIGlu
IHRoZSBmaWVsZCBkb2Vzbid0IHNlZW0gcmVhc29uYWJsZS4KCkV2ZW4gd2l0aCBkdWFsLWtlcm5l
bCBkZXZpY2VzIHdpdGggVS1Cb290IGZhaWxvdmVyLCB0aGUgcHJvYmFiaWxpdHkgb2YKYm90aCBi
ZWluZyBiYWQgaXMgYXJvdW5kIDclLCB3aGljaCBzdGlsbCBzZWVtcyB1bnJlYXNvbmFibGUuCgoK
LS0tLS0KCkxlYXZpbmcgYXNpZGUgcG9vciBib290LWxvYWRlciBpbXBsZW1lbnRhdGlvbnMsIGl0
IHdvdWxkIHRoZW4gc2VlbQp0aGF0IFUtQm9vdCBtYW5hZ2VzIGJhZCBibG9ja3MgaW4gc29tZSB3
YXkuCgpJdCBsb29rcyBsaWtlIHRoZSBgbmFuZCB3cml0ZWAgYW5kIGBuYW5kIHJlYWRgIGNvbW1h
bmRzIHNraXAgYmFkCmJsb2Nrc1sxXS4gSXQgaXMgbXkgdW5kZXJzdGFuZGluZyB0aGF0IHRoZSBP
cGVuV3J0IGBtdGRgIGV4ZWN1dGFibGUKZnVuY3Rpb25zIHNpbWlsYXJseS4KCklmIEkndmUgZ290
IGEgZGV2aWNlIHdpdGggYSBzaW5nbGUsIGJhZCwgMTI4IGtCIGJsb2NrIGluIGEgMiBNQiBrZXJu
ZWwKcGFydGl0aW9uLCB0aGVuIEkndmUgb25seSBnb3QgMSw5NjYsMDgwIG9mIHdyaXRhYmxlIHNw
YWNlLiBMb3NlCmFub3RoZXIgYmxvY2sgYW5kIHRoZXJlJ3Mgb25seSAxLDgzNSwwMDggYXZhaWxh
YmxlLgoKRmlyc3Qgb2ZmLCB0aGlzLCBjb3VwbGVkIHdpdGggc2VlaW5nIGF0aDc5LW5hbmQga2Vy
bmVscyBhbHJlYWR5IGF0CjEsOTMzLDg0NCBieXRlcywgYXJndWVzIGZvciAzLSBvciA0LU1CIGtl
cm5lbCBwYXJ0aXRpb25zLgoKU2Vjb25kLCBgS0VSTkVMX1NJWkUgOj0gMjA0OGtgIG1heSBub3Qg
YmUgdGhlIHJpZ2h0IHdheSB0byBoYW5kbGUKdGhpcy4gTm90IG9ubHkgaXMgaXQgdXNlZCBmb3Ig
YSBrZXJuZWwtc2l6ZSBjaGVjaywgYnV0IGl0IGlzIG9mdGVuCnVzZWQgaW4gdGhlIGNvbnN0cnVj
dGlvbiBvZiAiZmFjdG9yeSIgaW1hZ2VzIGFzIHRoZSBzaXplIG9mIHRoZSBrZXJuZWwKcGFydGl0
aW9uCgogwqAgSU1BR0UvZmFjdG9yeS5iaW4gOj0gYXBwZW5kLWtlcm5lbCB8IHBhZC10byAkJCQk
KEtFUk5FTF9TSVpFKSB8IAphcHBlbmQtdWJpCgpJdCBzZWVtcyB0aGF0IGVpdGhlciBiYWQtYmxv
Y2sgcmVzZXJ2YXRpb24gbmVlZHMgdG8gYmUgImJ1aWx0IGluIiB0bwp0aGUgS0VSTkVMX1NJWkUg
Y2hlY2ssIG9yIGEgbmV3IHBhcmFtZXRlciBpbnRyb2R1Y2VkIHRoYXQgaXMgdGhlCiJwYWQtdG8i
IHNpemUuCgpUaGVyZSBzZWVtcyB0byBiZSBhbiBhZGRpdGlvbmFsIGNvbXBsaWNhdGlvbiB3aXRo
IHBhZC10bywgYXMgaXQgb2Z0ZW4KaXMgdXNlZCBpbiAiZmFjdG9yeSIgaW1hZ2VzIHRvIG1vdmUg
dGhlIFVCSSBpbWFnZSB0byBpdHMgZGVzaXJlZApzdGFydGluZyBhZGRyZXNzLiBUaGUgYnVpbGQg
c3lzdGVtIGNhbid0IGtub3cgaG93IG1hbnkgYmFkIGJsb2Nrcwp0aGVyZSBhbHJlYWR5IG1heSBi
ZSBvbiBhIHNwZWNpZmljIGVuZC11c2VyJ3MgZGV2aWNlLgoKCi0tLS0tCgpBcyBmYXIgYXMgaG93
IG11Y2ggdG8gcmVzZXJ2ZSwgbXkgcmVjb2xsZWN0aW9uIG9mIGNvbWJpbmF0aW9ucyBhbmQKcGVy
bXV0YXRpb25zIHByb2JhYmx5IGlzbid0IHdoYXQgaXQgc2hvdWxkIGJlLiBJZiBJJ3ZlIG1hZGUg
YSBtaXN0YWtlCmluIG15IGFzc3VtcHRpb25zIG9yIGFuYWx5c2lzLCBwbGVhc2UgbGV0IG1lIGtu
b3chCgpGb3IgdGhlIFNQSSBOQU5EIHRoYXQgSSd2ZSBsb29rZWQgYXQsIGFzIHdlbGwgYXMgZm9y
IHNvbWV0aGluZyBsaWtlCnRoZSBNaWNyb24gTVQyOUYxLXNlcmllcyBwYXJhbGxlbCBOQU5EWzJd
LCBpdCBsb29rcyBsaWtlCgoqIEJsb2NrcyBhcmUgMTI4IGtCIG9mIGRhdGEKKiBOdW1iZXIgb2Yg
dmFsaWQgYmxvY2tzIGlzIHR5cGljYWxseSAxMDA0IHBlciAxMDI0CgpBdCBsZWFzdCBhcyBmYXIg
YXMgSSBrbm93LCB3aGVuIGEgYmxvY2sgImdvZXMgYmFkIiwgdGhlIGVudGlyZSAxMjgga0IKb2Yg
ZGF0YSBpcyBubyBsb25nZXIgYXZhaWxhYmxlLgoKSWYgbXkgZHVzdHkgbWVtb3J5IG9mIHByb2Jh
YmlsaXR5IGlzIGNvcnJlY3QsIHRoZW4gdGhlIHByb2JhYmlsaXR5IG9mIGEKZ2l2ZW4gbnVtYmVy
IG9mIGJhZCBibG9ja3MgaXMgdGhlIHByb2JhYmlsaXR5IHRoYXQgaXQgaGFwcGVucyBpbiBvbmUK
cGF0dGVybgoKIMKgIHBfb25lX3dheSA9IChwX2JhZCAqKiBiYWRfY291bnQpICoKIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIChwX2dvb2QgKiogKHBhcnRpdGlvbl9ibG9ja3MgLSBiYWRfY291
bnQpKQoKbXVsdGlwbGllZCBieSB0aGUgbnVtYmVyIG9mIHdheXMgdGhvc2UgbnVtYmVyIG9mIGJh
ZCBibG9ja3MgY2FuIGJlCmFycmFuZ2VkIGFtb25nIHRoZSBudW1iZXIgb2YgYmxvY2tzIGJlaW5n
IGV4YW1pbmVkLgoKIMKgIGNvbWJpbmF0aW9ucyhwYXJ0aXRpb25fYmxvY2tzLCBiYWRfY291bnQp
CgpUaGUgcHJvYmFiaWxpdHkgb2YgZmFpbHVyZSBhdCBhIGdpdmVuIG51bWJlciBvZiBmYWlsZWQg
YmxvY2tzIGlzIHRoZW4Kb25lIG1pbnVzIHRoZSBjdW11bGF0aXZlIHByb2JhYmlsaXR5IG9mIHRo
YXQgbnVtYmVyIG9mIGZhaWxlZCBibG9ja3Mgb3IKbGVzcy4KCklmIEkgZ290IHRoaXMgYWxsIHJp
Z2h0IChQeXRob24gY29kZSBiZWxvdyksIHRoZSByZXN1bHRzIGFyZSB1Z2x5CgooVGhlIHNlY29u
ZCBjb2x1bW4gaXMgdGhlICJ1bnJlc2VydmVkIiBzcGFjZSBmb3IgdGhlIGtlcm5lbCwKIk9uZSBp
biIgaXMgdGhlIHByb2JhYmlsaXR5IG9mIHRoZSBiYWQgYmxvY2tzIGltcGFjdGluZyB0aGUga2Vy
bmVsLikKCiDCoCBwX2JhZCA9IDIwLzEwMjQKCjIgTUIgcGFydGl0aW9uOsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBQbmJiIFBjdW11bAogwqAwIGluIDE2wqDCoMKgIDIsMDQ4IGtCwqDCoMKgIE9uZSBpbsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDPCoMKgwqDCoMKgIDAuNzI5MzU3IDAuNzI5MzU3CiDCoDEg
aW4gMTbCoMKgwqAgMSw5MjAga0LCoMKgwqAgT25lIGluwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDI2wqDCoMKgwqDCoCAwLjIzMjQ2NCAwLjk2MTgyMQogwqAyIGluIDE2wqDCoMKgIDEsNzkyIGtC
wqDCoMKgIE9uZSBpbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjkwwqDCoMKgwqDCoCAwLjAzNDcz
MSAwLjk5NjU1MgogwqAzIGluIDE2wqDCoMKgIDEsNjY0IGtCwqDCoMKgIE9uZSBpbsKgwqDCoMKg
wqDCoMKgwqDCoCA0LDU1OMKgwqDCoMKgwqAgMC4wMDMyMjkgMC45OTk3ODEKIMKgNCBpbiAxNsKg
wqDCoCAxLDUzNiBrQsKgwqDCoCBPbmUgaW7CoMKgwqDCoMKgwqDCoMKgIDk2LDQ0M8KgwqDCoMKg
wqAgMC4wMDAyMDkgMC45OTk5OTAKIMKgNSBpbiAxNsKgwqDCoCAxLDQwOCBrQsKgwqDCoCBPbmUg
aW7CoMKgwqDCoMKgIDIsNjYyLDU0OcKgwqDCoMKgwqAgMC4wMDAwMTAgMS4wMDAwMDAKCjQgTUIg
cGFydGl0aW9uOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQbmJiIFBjdW11bAogwqAwIGluIDMywqDCoMKgIDQs
MDk2IGtCwqDCoMKgIE9uZSBpbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDLCoMKgwqDCoMKg
IDAuNTMxOTYxIDAuNTMxOTYxCiDCoDEgaW4gMzLCoMKgwqAgMyw5Njgga0LCoMKgwqAgT25lIGlu
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgN8KgwqDCoMKgwqAgMC4zMzkwOTkgMC44NzEwNjAK
IMKgMiBpbiAzMsKgwqDCoCAzLDg0MCBrQsKgwqDCoCBPbmUgaW7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgNDHCoMKgwqDCoMKgIDAuMTA0NzAyIDAuOTc1NzYyCiDCoDMgaW4gMzLCoMKgwqAgMyw3
MTIga0LCoMKgwqAgT25lIGluwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyOTXCoMKgwqDCoMKgIDAu
MDIwODU3IDAuOTk2NjE5CiDCoDQgaW4gMzLCoMKgwqAgMyw1ODQga0LCoMKgwqAgT25lIGluwqDC
oMKgwqDCoMKgwqDCoMKgIDIsNzEzwqDCoMKgwqDCoCAwLjAwMzAxMiAwLjk5OTYzMQogwqA1IGlu
IDMywqDCoMKgIDMsNDU2IGtCwqDCoMKgIE9uZSBpbsKgwqDCoMKgwqDCoMKgwqAgMzAsNzcywqDC
oMKgwqDCoCAwLjAwMDMzNiAwLjk5OTk2OAogwqA2IGluIDMywqDCoMKgIDMsMzI4IGtCwqDCoMKg
IE9uZSBpbsKgwqDCoMKgwqDCoMKgIDQyMSwwMjbCoMKgwqDCoMKgIDAuMDAwMDMwIDAuOTk5OTk4
CiDCoDcgaW4gMzLCoMKgwqAgMywyMDAga0LCoMKgwqAgT25lIGluwqDCoMKgwqDCoCA2LDgyNyw4
MTfCoMKgwqDCoMKgIDAuMDAwMDAyIDEuMDAwMDAwCgoKSWYgMSBpbiB+MTAwLDAwMCBpcyBhbiAi
YWNjZXB0YWJsZSIgZmFpbHVyZSByYXRlIGZvciBhIGdpdmVuIGtlcm5lbAooc2VlIGxhdGVyIG5v
dGUgb24gZHVhbC1rZXJuZWwgbGF5b3V0cykKCjIgTUIgcGFydGl0aW9uIGNhbiAic2FmZWx5IiBo
b2xkIDEsNTM2IGtCCjQgTUIgcGFydGl0aW9uIGNhbiAic2FmZWx5IiBob2xkIDMsMzI4IGtCCgoK
RHJvcHBpbmcgdG8gcF9iYWQgPSA1LzEwMjQgImhlbHBzIiBhIGxpdHRsZQoKMiBNQiBwYXJ0aXRp
b246wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIFBuYmIgUGN1bXVsCiDCoDAgaW4gMTbCoMKgwqAgMiwwNDgga0LC
oMKgwqAgT25lIGluwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEzwqDCoMKgwqDCoCAwLjkyNDY3
MiAwLjkyNDY3MgogwqAxIGluIDE2wqDCoMKgIDEsOTIwIGtCwqDCoMKgIE9uZSBpbsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgMzY1wqDCoMKgwqDCoCAwLjA3MjU5NCAwLjk5NzI2NgogwqAyIGluIDE2
wqDCoMKgIDEsNzkyIGtCwqDCoMKgIE9uZSBpbsKgwqDCoMKgwqDCoMKgwqAgMTYsMDg3wqDCoMKg
wqDCoCAwLjAwMjY3MiAwLjk5OTkzOAogwqAzIGluIDE2wqDCoMKgIDEsNjY0IGtCwqDCoMKgIE9u
ZSBpbsKgwqDCoMKgwqAgMSwwMTMsMDQxwqDCoMKgwqDCoCAwLjAwMDA2MSAwLjk5OTk5OQoKNCBN
QiBwYXJ0aXRpb246wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBuYmIgUGN1bXVsCiDCoDAgaW4gMzLCoMKgwqAg
NCwwOTYga0LCoMKgwqAgT25lIGluwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNsKgwqDCoMKg
wqAgMC44NTUwMTggMC44NTUwMTgKIMKgMSBpbiAzMsKgwqDCoCAzLDk2OCBrQsKgwqDCoCBPbmUg
aW7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOTPCoMKgwqDCoMKgIDAuMTM0MjUyIDAuOTg5Mjcw
CiDCoDIgaW4gMzLCoMKgwqAgMyw4NDAga0LCoMKgwqAgT25lIGluwqDCoMKgwqDCoMKgwqDCoMKg
IDEsOTI1wqDCoMKgwqDCoCAwLjAxMDIxMSAwLjk5OTQ4MQogwqAzIGluIDMywqDCoMKgIDMsNzEy
IGtCwqDCoMKgIE9uZSBpbsKgwqDCoMKgwqDCoMKgwqAgNTQsNTc0wqDCoMKgwqDCoCAwLjAwMDUw
MSAwLjk5OTk4MgogwqA0IGluIDMywqDCoMKgIDMsNTg0IGtCwqDCoMKgIE9uZSBpbsKgwqDCoMKg
wqAgMSw5OTcsMDA1wqDCoMKgwqDCoCAwLjAwMDAxOCAwLjk5OTk5OQoKClN0aWxsIG5vdCBncmVh
dAoKMiBNQiBwYXJ0aXRpb24gY2FuICJzYWZlbHkiIGhvbGQgMSw2NjQga0IKNCBNQiBwYXJ0aXRp
b24gY2FuICJzYWZlbHkiIGhvbGQgMyw1ODQga0IKCgpZb3UgY2FuICJwbGF5IiB3aXRoIHRoZSBQ
eXRob24gY29kZSBmb3Igb3RoZXIgdmFsdWVzLiBJIGhhdmUgc2VlbiB0d28KYmFkIGJsb2NrcyBp
biAxMjggTUIgTkFORC4KCgpGb3IgZHVhbC1maXJtd2FyZSBkZXZpY2VzLCB0aGVyZSB3aWxsIGJl
IGEgImhlbHBmdWwiIGVmZmVjdCBpbiB0aGF0CnVudGlsIGJvdGgga2VybmVscyBhcmUgImJhZCIs
IHRoZSBkZXZpY2UgaXMgc3RpbGwgZnVuY3Rpb25hbC4gSWYgdGhlCmZhaWx1cmVzIGFyZSBpbmRl
cGVuZGVudCwgdGhlbiwgZm9yIGV4YW1wbGUsIGEgfjEvMzE2IGNoYW5jZSBvZgpmYWlsdXJlIG9m
IG9uZSBrZXJuZWwgd291bGQgYmUgYSAxLzEwMCwwMDAgY2hhbmNlIG9mIGZhaWx1cmUgb2YKYm90
aC4KCkxvb2tpbmcgYXQgdGhlIGRhdGEsIHRoZXJlIHdvdWxkIHN0aWxsIGJlIHRoZSBuZWVkIHRv
IHJlc2VydmUgYXQgbGVhc3QKb25lIG9yIHR3byBibG9ja3MgZm9yIGVhY2ggb2YgdGhlIGtlcm5l
bHMuIChzeXN1cGdyYWRlIG1lc3NhZ2luZyBhbmQKTkFORCB1cGdyYWRlIHdvdWxkIG5lZWQgdG8g
YmUgaW1wcm92ZWQsIGFzIGl0IHdvdWxkIGJlIHJlYXNvbmFibHkKbGlrZWx5IHRoYXQgdGhlIHBh
cnRpdGlvbiBkaWRuJ3QgInN3aXRjaCBldmVyeSB0aW1lIiBhcyBpdCBkb2VzIG5vdy4pCgoKWWVz
LCBVQkktcmVzaWRlbnQga2VybmVsc1szXSBoZWxwIHRoaXMgYXMgdGhlIGJhZCBibG9ja3MgYXJl
IGRlYWx0IHdpdGgKb3ZlciB0aGUgc3BhbiBvZiB0aGUgVUJJIHBhcnRpdGlvbiwgYnV0IHZlcnkg
ZmV3IGRldmljZXMgSSBrbm93IG9mCiJuYXRpdmVseSIgYm9vdCBhIGtlcm5lbCBmcm9tIFVCSS4K
CgoKSmVmZgoKCgpbMV0gaHR0cDovL3d3dy5kZW54LmRlL3dpa2kvcHVibGlzaC9EVUxHL0RVTEct
ZW5id19jbWMuaHRtbCNTZWN0aW9uXzUuOS45LjIuCgpbMl0gCmh0dHBzOi8vZGF0YXNoZWV0Lm9j
dG9wYXJ0LmNvbS9NVDI5RjFHMDhBQkFEQVdQLUlUJTNBRC1NaWNyb24tZGF0YXNoZWV0LTExNTUy
ODkzLnBkZgoKWzNdIGh0dHA6Ly93d3cuZGVueC5kZS93aWtpL3B1Ymxpc2gvRFVMRy9EVUxHLWVu
YndfY21jLmh0bWwjU2VjdGlvbl81LjkuMy42LgoKCkNhbGN1bGF0ZSBwcm9iYWJsaXR5IHRhYmxl
OgoKODwKCmZyb20gbWF0aCBpbXBvcnQgZmFjdG9yaWFsCgoKZGVmIGNvbWJpbmF0aW9ucyhuLCBr
KToKIMKgwqDCoCByZXR1cm4gZmFjdG9yaWFsKG4pIC8gKGZhY3RvcmlhbChrKSAqIGZhY3Rvcmlh
bChuLWspKQoKCmlmIF9fbmFtZV9fID09ICdfX21haW5fXyc6CgogwqDCoMKgIHBfYmFkID0gMjAv
MTAyNAoKIMKgwqDCoCBwX2dvb2QgPSAxIC0gcF9iYWQKCiDCoMKgwqAga0IgPSAxMDI0CiDCoMKg
wqAgTUIgPSAxMDI0KjEwMjQKCiDCoMKgwqAgYmxvY2tfc2l6ZSA9IDEyOCAqIGtCCgogwqDCoMKg
IGZvciBwYXJ0aXRpb25fbWIgaW4gKDIsIDQpOgoKIMKgwqDCoMKgwqDCoMKgIHByaW50KGYie3Bh
cnRpdGlvbl9tYn0gTUIgcGFydGl0aW9uOiB7J1BuYmInOj40MHN9wqDCoMKgwqDCoMKgIFBjdW11
bCIpCgogwqDCoMKgwqDCoMKgwqAgcGFydGl0aW9uX3NpemUgPSBwYXJ0aXRpb25fbWIgKiBNQgoK
IMKgwqDCoMKgwqDCoMKgIHBhcnRpdGlvbl9ibG9ja3MgPSByb3VuZChwYXJ0aXRpb25fc2l6ZSAv
IGJsb2NrX3NpemUpCgogwqDCoMKgwqDCoMKgwqAgcF9jdW11bGF0aXZlID0gMAoKIMKgwqDCoMKg
wqDCoMKgIGZvciBiYWRfY291bnQgaW4gcmFuZ2UoMCwgcGFydGl0aW9uX2Jsb2NrcysxKToKCiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBfb25lX3dheSA9IChwX2JhZCAqKiBiYWRfY291bnQpICog
KHBfZ29vZCAqKiAKKHBhcnRpdGlvbl9ibG9ja3MgLSBiYWRfY291bnQpKQoKIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcF9hbGxfd2F5cyA9IHBfb25lX3dheSAqIGNvbWJpbmF0aW9ucyhwYXJ0aXRp
b25fYmxvY2tzLCAKYmFkX2NvdW50KQoKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcF9jdW11bGF0
aXZlICs9IHBfYWxsX3dheXMKCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByaW50KGYie2JhZF9j
b3VudDoyZH0gaW4ge3BhcnRpdGlvbl9ibG9ja3M6MmR9wqDCoCAiLCBlbmQ9JycpCiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHByaW50KGYie3JvdW5kKChwYXJ0aXRpb25fc2l6ZSAtIGJhZF9jb3Vu
dCAqIApibG9ja19zaXplKS9rQik6NixkfSBrQsKgwqAgIiwgZW5kPScnKQogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB0cnk6CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJpbnQoZiIg
T25lIGluIHtpbnQoMS8oMSAtIHBfY3VtdWxhdGl2ZSkpOjE0LGR9IiwgZW5kPScnKQogwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBleGNlcHQgWmVyb0RpdmlzaW9uRXJyb3I6CiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcHJpbnQoKQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGJyZWFrCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByaW50KGYiwqDCoMKgwqDCoCB7cF9hbGxf
d2F5czouNmZ9wqDCoCB7cF9jdW11bGF0aXZlOi42Zn0iKQogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpZiBpbnQoMS8oMSAtIHBfY3VtdWxhdGl2ZSkpID4gMWU4OgogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGJyZWFrCgogwqDCoMKgwqDCoMKgwqAgcHJpbnQoKQoKID44CgoKUnVuIG1v
bnRlLWNhcmxvIHNpbXVsYXRpb24KCjg8CgppbXBvcnQgcmFuZG9tCgpydW5zID0gMTAwMDAwMAoK
cF9iYWQgPSAyMC8xMDI0CgpuX2Jsb2NrcyA9IDE2Cgpjb3VudHMgPSBbMF0gKiAobl9ibG9ja3Mg
KyAxKQoKZm9yIHJ1biBpbiByYW5nZSgwLCBydW5zKToKIMKgwqDCoCBiYWRfY291bnQgPSAwCiDC
oMKgwqAgZm9yIGJsb2NrIGluIHJhbmdlKDAsIG5fYmxvY2tzKToKIMKgwqDCoMKgwqDCoMKgIGlm
IHJhbmRvbS5yYW5kb20oKSA8IHBfYmFkOgogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiYWRfY291
bnQgKz0gMQogwqDCoMKgIGNvdW50c1tiYWRfY291bnRdICs9IDEKCmN1bXVsYXRpdmUgPSAwCgpm
b3IgY291bnQgaW4gcmFuZ2UoMCwgbGVuKGNvdW50cykpOgogwqDCoMKgIGN1bXVsYXRpdmUgKz0g
Y291bnRzW2NvdW50XQogwqDCoMKgIHByaW50KGYie2NvdW50OjJufcKgIHtjb3VudHNbY291bnRd
OjdufcKgIHtjdW11bGF0aXZlOjdufSAKe2NvdW50c1tjb3VudF0gLyBydW5zOjAuN2Z9wqAge2N1
bXVsYXRpdmUgLyBydW5zOjAuN2Z9IikKCiA+OAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
