Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812545B26E
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 02:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GY92QKJ08D9InE88wa1dDi/XC0JCDxjXiF8lUPwpI6o=; b=Pe40P24VHsjqSl
	eJ9gH/wIwIT8Tb1ayhP5urwg4HMYbYbaBvFVUWkWCgctKr4qOKZw8mqJ9sRq2Z83dHw1rASXRUtSG
	aM0da10/79koXKhXwHu9dqBWjA74Y/g/t2XVQf5YiDd7M9XePbMfUnPXfCIm8KfSkPEiQjvdrMCBO
	/OYe+31r6hqgzELaswssu3+trY4DwTD4zqNrrho5s65JbMvbugMKqgA9CKf9vJEEIj9oxPCA5PwC/
	oU8yi6UpPC/yTJq6Mne5LeHEftVzbCqtBQC+Q+8Gzbd70kTqdK06HmnlLtRAm8onfS17DT0TbEtdj
	Qo5vxs1FEJdqu4pBrtJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhjxV-0000Wf-2z; Mon, 01 Jul 2019 00:14:13 +0000
Received: from mail.redfish-solutions.com ([66.232.79.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhjxI-0000WN-8i
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 00:14:01 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id x610DnwZ019613
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 30 Jun 2019 18:13:49 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <9D9B5264-BA3B-4C28-A1E9-4CAEFCAAA230@redfish-solutions.com>
Date: Sun, 30 Jun 2019 18:13:49 -0600
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_171400_405739_AEA0E605 
X-CRM114-Status: UNSURE (   4.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Issues with 4.19 and nft_reject_ipv4.ko after
 rebasing/updating
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SeKAmW0gc2VlaW5nIHRoZSBmb2xsb3dpbmcgZmFpbHVyZSBhZnRlciByZWJhc2luZyB0byBtYXN0
ZXIgYW5kIDQuMTk6CgptYWtlWzNdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL3BoaWxpcHAv
bGVkZS9wYWNrYWdlL2tlcm5lbC9saW51eCcKbWtkaXIgLXAgL2hvbWUvcGhpbGlwcC9sZWRlL3N0
YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9yb290LXg4Ni9zdGFtcAoKU0hFTEw9IGZsb2Nr
IC9ob21lL3BoaWxpcHAvbGVkZS90bXAvLnJvb3QtY29weS5mbG9jayAtYyAnY3AgLWZwUiAvaG9t
ZS9waGlsaXBwL2xlZGUvYnVpbGRfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9saW51eC14ODZfNjQv
cGFja2FnZXMvLnBrZ2Rpci9rZXJuZWwvLiAvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19kaXIv
dGFyZ2V0LXg4Nl82NF9tdXNsL3Jvb3QteDg2LycKdG91Y2ggL2hvbWUvcGhpbGlwcC9sZWRlL3N0
YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9yb290LXg4Ni9zdGFtcC8ua2VybmVsX2luc3Rh
bGxlZApFUlJPUjogbW9kdWxlICcvaG9tZS9waGlsaXBwL2xlZGUvYnVpbGRfZGlyL3RhcmdldC14
ODZfNjRfbXVzbC9saW51eC14ODZfNjQvbGludXgtNC4xOS41Ni9uZXQvaXB2NC9uZXRmaWx0ZXIv
bmZ0X3JlamVjdF9pcHY0LmtvJyBpcyBtaXNzaW5nLgptb2R1bGVzL25ldGZpbHRlci5tazoxMDc5
OiByZWNpcGUgZm9yIHRhcmdldCAnL2hvbWUvcGhpbGlwcC9sZWRlL2Jpbi90YXJnZXRzL3g4Ni82
NC9wYWNrYWdlcy9rbW9kLW5mdC1jb3JlXzQuMTkuNTYtMV94ODZfNjQuaXBrJyBmYWlsZWQKbWFr
ZVszXTogKioqIFsvaG9tZS9waGlsaXBwL2xlZGUvYmluL3RhcmdldHMveDg2LzY0L3BhY2thZ2Vz
L2ttb2QtbmZ0LWNvcmVfNC4xOS41Ni0xX3g4Nl82NC5pcGtdIEVycm9yIDEKbWFrZVszXTogTGVh
dmluZyBkaXJlY3RvcnkgJy9ob21lL3BoaWxpcHAvbGVkZS9wYWNrYWdlL2tlcm5lbC9saW51eCcK
dGltZTogcGFja2FnZS9rZXJuZWwvbGludXgvY29tcGlsZSM1LjIzIzAuMjYjNS43NwpwYWNrYWdl
L01ha2VmaWxlOjEwNzogcmVjaXBlIGZvciB0YXJnZXQgJ3BhY2thZ2Uva2VybmVsL2xpbnV4L2Nv
bXBpbGUnIGZhaWxlZAptYWtlWzJdOiAqKiogW3BhY2thZ2Uva2VybmVsL2xpbnV4L2NvbXBpbGVd
IEVycm9yIDIKbWFrZVsyXTogTGVhdmluZyBkaXJlY3RvcnkgJy9ob21lL3BoaWxpcHAvbGVkZScK
cGFja2FnZS9NYWtlZmlsZToxMDM6IHJlY2lwZSBmb3IgdGFyZ2V0ICcvaG9tZS9waGlsaXBwL2xl
ZGUvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3N0YW1wLy5wYWNrYWdlX2NvbXBpbGUn
IGZhaWxlZAptYWtlWzFdOiAqKiogWy9ob21lL3BoaWxpcHAvbGVkZS9zdGFnaW5nX2Rpci90YXJn
ZXQteDg2XzY0X211c2wvc3RhbXAvLnBhY2thZ2VfY29tcGlsZV0gRXJyb3IgMgptYWtlWzFdOiBM
ZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvcGhpbGlwcC9sZWRlJwovaG9tZS9waGlsaXBwL2xlZGUv
aW5jbHVkZS90b3BsZXZlbC5tazoyMTY6IHJlY2lwZSBmb3IgdGFyZ2V0ICd3b3JsZOKAmSBmYWls
ZWQKCkkgaGFkIHByZXZpb3VzbHkgYmVlbiBidWlsZGluZyA0LjE5IGEgY291cGxlIG9mIG1vbnRo
cyBhZ28gYW5kIHdhc27igJl0IHNlZWluZyB0aGlzLgoKV2hvIGhhcyBiZWVuIHdvcmtpbmcgb24g
dGhpcyBzdHVmZj8KCkkgbm90aWNlZCB0aGF0IHRoZXJl4oCZcyBub3cgbmZfcmVqZWN0X2lwdjQu
YyBhbmQgbmZ0X3JlamVjdF9pcHY0LmMsIGV0Yy4gYW5kIGFtIHdvbmRlcmluZyBpZiBib3RoIGFy
ZSBub3cgcmVxdWlyZWQgaW4gNC4xOS4KCkFueSBpZGVhcz8KClRoYW5rcwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
