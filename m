Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CE35B14F
	for <lists+openwrt-devel@lfdr.de>; Sun, 30 Jun 2019 20:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qai5X5HVp/E83PmAuwJ4qLgWaCh6MTeVtid58l351PI=; b=pqGt3QDHZa+pNu
	sIg+j/JuciHPqh6nKok0kpb0t/Mg1tG1GpF+YxLmSqth/KrS3WQZ3kF0PZTUfo0rIQosagUDWatAm
	R9133tvATeQz0Kjt//9ybrFv7AKFghTY7csREXsLHm0LHoKkykSD+azxFYruBWAfwj6VojQbXDeUt
	KTVhii6sMWMlZYj0apb/7Wmm2C0RfMlFfgCcM3i6NYX5BcnDnBk9NG6gIxnvF/T0NxUIyGPus1fd+
	YFT/bhho0ARh51P4gt8cEzTTRSiUhkbea6qPqhy7dZMdkDpF4ixWwKl1DcpQMZj4GnjOJkxoMD3gn
	Us0IHhCjEVatlqKR71Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hheYD-0007FG-R6; Sun, 30 Jun 2019 18:27:45 +0000
Received: from mail.redfish-solutions.com ([66.232.79.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hheY5-0007Ej-VE
 for openwrt-devel@lists.openwrt.org; Sun, 30 Jun 2019 18:27:39 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id x5UIRTBa018856
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Sun, 30 Jun 2019 12:27:29 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <759B3B57-92A3-4688-B531-C4B97EF1289A@redfish-solutions.com>
Date: Sun, 30 Jun 2019 12:27:29 -0600
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_112738_108605_041AB673 
X-CRM114-Status: UNSURE (   4.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Problems w/ "make defconfig oldconfig" after
 rebasing
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

SeKAmXZlIGJlZW4gYnVzeSB3aXRoIG90aGVyIHRoaW5ncywgYW5kIGp1c3QgaGFkIGEgY2hhbmNl
IHRvIHRyeSB0byBnZXQgY2F1Z2h0IHVwIHdpdGggT3BlbldSVCBhbmQgbXkgdGlja2V0cywgZXRj
LiAgSSByZWJhc2VkIG9wZW53cnQgYW5kIHBhY2thZ2VzLCB0aGVuIGRpZCDigJxtYWtlIGRlZmNv
bmZpZyBvbGRjb25maWfigJ0gYnV0IEnigJltIHNlZWluZzoKCldBUk5JTkc6IE1ha2VmaWxlICdw
YWNrYWdlL2ZlZWRzL3BhY2thZ2VzL3phYmJpeC9NYWtlZmlsZScgaGFzIGEgZGVwZW5kZW5jeSBv
biAnbGlibWFyaWFkYmNsaWVudCcsIHdoaWNoIGRvZXMgbm90IGV4aXN0CldBUk5JTkc6IE1ha2Vm
aWxlICdwYWNrYWdlL2ZlZWRzL3BhY2thZ2VzL3phYmJpeC9NYWtlZmlsZScgaGFzIGEgZGVwZW5k
ZW5jeSBvbiAnbGlibWFyaWFkYmNsaWVudCcsIHdoaWNoIGRvZXMgbm90IGV4aXN0CnRtcC8uY29u
ZmlnLXBhY2thZ2UuaW46NTU6IHN5bnRheCBlcnJvcgp0bXAvLmNvbmZpZy1wYWNrYWdlLmluOjU0
OiBpbnZhbGlkIG9wdGlvbgp0bXAvLmNvbmZpZy1wYWNrYWdlLmluOjEzMTA2OiBzeW50YXggZXJy
b3IKdG1wLy5jb25maWctcGFja2FnZS5pbjoxMzEwNTogaW52YWxpZCBvcHRpb24KCkxvb2tpbmcg
YXQgdGhpcyBmaWxlLCBJIGdldDoKCiAgICA1MyAgICAgICAgICAgICAgICAgIHNlbGVjdCBQQUNL
QUdFX2F0dGVuZGVkc3lzdXBncmFkZS1jb21tb24KICAgIDU0ICAgICAgICAgICAgICAgICAgc2Vs
ZWN0IFBBQ0tBR0VfdWNlcnQgaWYgUEFDS0FHRV91Y2VydC1mdWxsPFBBQ0tBR0VfYXVjCiAgICA1
NSAgICAgICAgICAgICAgICAgIHNlbGVjdCBQQUNLQUdFX2xpYmJsb2Jtc2ctanNvbgogICAgNTYg
ICAgICAgICAgICAgICAgICBoZWxwCiAgICA1NyAgICAgICAgICAgICAgICAgICBDTEkgY2xpZW50
IGZvciBhdHRlbmRlZC1zeXN1cGdyYWRlCgrigKYKCiAxMTMwNCAgCiAxMTMwNSAgICAgICAgICBj
b25maWcgUEFDS0FHRV9rbW9kLWlwdC1jb25udHJhY2sKIDExMzA2ICAgICAgICAgICAgICAgICAg
dHJpc3RhdGUgImttb2QtaXB0LWNvbm50cmFjay4uLi4uLi4uLi4uLi4uLi4uLi4uLiBCYXNpYyBj
b25uZWN0aW9uIHRyYWNraW5nIG1vZHVsZXMiCiAxMTMwNyAgICAgICAgICAgICAgICAgIGRlZmF1
bHQgeSBpZiBERUZBVUxUX2ttb2QtaXB0LWNvbm50cmFjawogMTEzMDggICAgICAgICAgICAgICAg
ICBkZWZhdWx0IG0gaWYgQUxMfHxBTExfTk9OU0hBUkVEfHxBTExfS01PRFMKCmV0Yy4KCknigJlt
IGJ1aWxkaW5nIHdpdGg6Cgpjb21taXQgNGM4ZDVjZDIwZTQ2N2M3NmRiMTg1NzQyZjlmOTJmZDY0
ZWFhMzZjOApBdXRob3I6IOadjuWbvSA8dXhnb29kLm9yZ0BnbWFpbC5jb20+CkRhdGU6ICAgVGh1
IEFwciA0IDAzOjQyOjE2IDIwMTkgKzAwMDAKCiAgICB4ODY6IGFkZCBFRkkgaW1hZ2VzIGFuZCBt
YWtlIGlzbyBpbWFnZXMgRUZJIGJvb3RhYmxlCgpjaGVycnktcGlja2VkIGludG8gbXkgdHJlZSwg
YnV0IHRoaXMgc2hvdWxkIGJlIHRoZSBjYXVzZS4KCkFueW9uZSBoYXZlIGFuIGlkZWEgb2Ygd2hh
dOKAmXMgZ29pbmcgb24/CgpUaGFua3MsCgotUGhpbGlwCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
