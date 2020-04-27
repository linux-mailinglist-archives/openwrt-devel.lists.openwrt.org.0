Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683141B9A72
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 10:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=85nixhWQFfmw58DW3OnezgMQrkdeYWkQaAEp4i9Rkf8=; b=jPK4UPIaQw5+gX
	uD0ebm0Aur8ya63XbkZWj3YQ/ylUKlS4NxqnQPCc3VZbDldm/nXYHzEJEzcwdTpP7Br3ZfJTFv+70
	cxjh1TI04bi/oTlJp5+txo2iaMaw32oId3sZi1XNg0VMH1Z8YBF3FDxPbP7Uwoo62vvBZkFlugJ9o
	z7wD4ftLro17jik1D96OtC955znk/RaDAj7OY+xVXjWNK0XHWWdQ1EhrzGZSYfw5FoKhJr/KNfzXc
	86uKhDTDkCV7PBgOzb1TnAtcT0gK3IglvPLFApBCn68dmtmTrlhCHa1ymhmiXQ1sr3Ewd3O3ObjdF
	ejTpNkk8Pi7JFza8tHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzK8-0001Rz-Sq; Mon, 27 Apr 2020 08:41:08 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzK1-0001Qu-Nr
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 08:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587976857;
 s=strato-dkim-0002; d=bamkrs.de;
 h=Date:Message-ID:Subject:From:To:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=TE9QLvedoaD4deG8ntg68S8pVzGGsBpUHdS4T0r5LRs=;
 b=jrkJgAxeZanxjWyUAZ7WTUtB+0WTnuYgJMiLo4VBJghmL6Iuu6fclXvrbT47sXZIbV
 bBJMEAk7byEW28eJ9k++FdHi8M2gbMJ8Oiz/+ZNz+cUCqIYT5S93Fl/FdPV3EqOXOmVE
 EIGOEzJFLI42LJQc9knJPbGriZocDiXHNESk/ZWzIfR6IMMJYjU8Ur8tLXkmXf4wx6k/
 9QvTfhiyrsv7DRxPDsWw+7RmPetccJFJiIcuASuT0kP7/p5EotDYIbUd5+JpvIoiFVl3
 dBX+vshzPlARI0qbkDBfd+4TCtSCvykIN1iukw4d75iqDAZ9KHDEQdm/Hu0fubWODYaQ
 sB0Q==
X-RZG-AUTH: ":L20Qdkipd/NtQfa67vW/eJfuQpomyW4cBm3G2ZWMm0e+aME9udSL7FwAirwWgNfi+hnaB2xN1T82gTJZvCkNvW/JEERhW3RJaw=="
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2a02:b98:0:20d:51aa:b659:9ee4:9410]
 by smtp.strato.de (RZmta 46.6.2 AUTH) with ESMTPSA id k08b13w3R8evEwr
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate)
 for <openwrt-devel@lists.openwrt.org>;
 Mon, 27 Apr 2020 10:40:57 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: =?UTF-8?Q?Benedikt-Alexander_Mokro=c3=9f?= <openwrt@bamkrs.de>
Message-ID: <040ba113-764c-9b06-930c-b147c5ab7f90@bamkrs.de>
Date: Mon, 27 Apr 2020 10:40:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_014102_358086_42AC09AC 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: mmc: Read mmc-caps from dt with
 mmc_of_parse
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

VGhlIG9yaWdpbmFsIG1tYy1kcml2ZXIgZm9yIHJhbWlwcyB1c2VkIGhhcmRjb2RlZCBtbWMtY2Fw
cy4KVGhpcyBwYXRjaCByZW1vdmVzIHRoZSBoYXJkY29kZWQgY2FwcyBhbmQgZW5hYmxlcyBkdCBw
YXJzaW5nIHdpdGggCm1tY19vZl9wYXJzZS4KClNpZ25lZC1vZmYtYnk6IEJlbmVkaWt0LUFsZXhh
bmRlciBNb2tyb8OfIDxvcGVud3J0QGJhbWtycy5kZT4KLS0tCiAgLi4uL3JhbWlwcy9maWxlcy9k
cml2ZXJzL21tYy9ob3N0L210ay1tbWMvc2QuYyAgICAgIHwgMTMgKysrKysrKysrKy0tLQogIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMvZHJpdmVycy9tbWMvaG9zdC9tdGstbW1jL3Nk
LmMgCmIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxlcy9kcml2ZXJzL21tYy9ob3N0L210ay1tbWMv
c2QuYwppbmRleCA4Y2JjODdkYTNhLi5jMDI3NTI2MTE4IDEwMDY0NAotLS0gYS90YXJnZXQvbGlu
dXgvcmFtaXBzL2ZpbGVzL2RyaXZlcnMvbW1jL2hvc3QvbXRrLW1tYy9zZC5jCisrKyBiL3Rhcmdl
dC9saW51eC9yYW1pcHMvZmlsZXMvZHJpdmVycy9tbWMvaG9zdC9tdGstbW1jL3NkLmMKQEAgLTIy
MzUsMTAgKzIyMzUsMTkgQEAgc3RhdGljIGludCBtc2RjX2Rydl9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlIAoqcGRldikKICAJbW1jLT5mX21heCAgICAgID0gSE9TVF9NQVhfTUNMSzsKICAJ
bW1jLT5vY3JfYXZhaWwgID0gTVNEQ19PQ1JfQVZBSUw7CgotCW1tYy0+Y2FwcyAgID0gTU1DX0NB
UF9NTUNfSElHSFNQRUVEIHwgTU1DX0NBUF9TRF9ISUdIU1BFRUQ7CisJcmV0ID0gbW1jX29mX3Bh
cnNlKG1tYyk7CisJaWYgKHJldCkKKwkJZ290byByZWxlYXNlOwoKLQkvL1RPRE86IHJlYWQgdGhp
cyBhcyBidXMtd2lkdGggZnJvbSBkdCAodmlhIG1tY19vZl9wYXJzZSkKLQltbWMtPmNhcHMgIHw9
IE1NQ19DQVBfNF9CSVRfREFUQTsKKwlpZiAobW1jLT5mX21heCA+IEhPU1RfTUFYX01DTEspIHsK
KwkJZGV2X3dhcm4obW1jLT5wYXJlbnQsCisJCQkJIlwibWF4LWZyZXF1ZW5jeVwiIHByb3BlcnR5
IGdyZWF0ZXIgdGhhbiBtYXgtZnJlcXVlbmN5IG9mICVkLCB1c2luZyAKJWQuXG4iLAorCQkJCUhP
U1RfTUFYX01DTEssIEhPU1RfTUFYX01DTEspOworCQltbWMtPmZfbWF4ID0gSE9TVF9NQVhfTUNM
SzsKKwl9CisKKwkvKiBJdCBzZWVtcyB0aGVzZSBjYXBzIG11c3QgYmUgc2V0IHJlZ2FyZGxlcyBv
ZiB0aGUgZHQgKi8KKwltbWMtPmNhcHMgICA9IE1NQ19DQVBfTU1DX0hJR0hTUEVFRCB8IE1NQ19D
QVBfU0RfSElHSFNQRUVEOwoKICAJY2RfYWN0aXZlX2xvdyA9ICFvZl9wcm9wZXJ0eV9yZWFkX2Jv
b2wocGRldi0+ZGV2Lm9mX25vZGUsIAoibWVkaWF0ZWssY2QtaGlnaCIpOwoKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
