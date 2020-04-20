Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF7D1B004C
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 05:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gSs79ovebZlIHDu00QF5JgAuyEVqijIWfWu2NVK3syM=; b=CpQHCjnKqyMfXe
	rsGOjQpeFwyclzkCJ1fPaDL9tHCpE8GPPZR0THswbnJ6sPdVrQzVB4XgQg1oEniND0cRzaSkJpa4F
	JcIJtH+7kNtwoCmpqw+DiKwXFqQthHblg1RotHnG6cFKWEQS0c54OQiZ4cIQuAXd/Ndt/Y78HHgyW
	NLr7Se61Juwz4qijDMdMBJ5KRTjNB9X0+6iSEoOCz7rDwlRMrWNZEvY4sPoAG74QOVFf/3ycpfL9D
	xFks6pAPaF4ui41jY7czCd7sdotm1SLyhhzq0azZu5cbsHnw8qTvK93rluznyb4dZxF7QThipopz2
	fP46dHwbJt/rWEqQN8yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQNPB-0001tc-Rg; Mon, 20 Apr 2020 03:47:33 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQNP5-0001tG-Qt
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 03:47:29 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03K3lJbr010589
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 21:47:19 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <C9819030-4300-40CD-8FCE-A93314F1BD4B@redfish-solutions.com>
Date: Sun, 19 Apr 2020 21:47:19 -0600
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_204727_978642_8DD44340 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Can build x86_64 because of ntf_reject_ipv4.ko
 missing
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

SGkgYWxsLAoKSSBqdXN0IHJlYmFzZWQgdG8gb3BlbndydCBtYXN0ZXIgdG9kYXksIGFuZCB0cmll
ZCB0byByZWJ1aWxkIGZyb20gc2NyYXRjaCBidXQgSeKAmW0gZ2V0dGluZzoKCm1ha2VbM106IEVu
dGVyaW5nIGRpcmVjdG9yeSAnL2hvbWUvcGhpbGlwcC9sZWRlL3BhY2thZ2Uva2VybmVsL2xpbnV4
Jwpta2RpciAtcCAvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9t
dXNsL3Jvb3QteDg2L3N0YW1wCgpTSEVMTD0gZmxvY2sgL2hvbWUvcGhpbGlwcC9sZWRlL3RtcC8u
cm9vdC1jb3B5LmZsb2NrIC1jICdjcCAtZnBSIC9ob21lL3BoaWxpcHAvbGVkZS9idWlsZF9kaXIv
dGFyZ2V0LXg4Nl82NF9tdXNsL2xpbnV4LXg4Nl82NC9wYWNrYWdlcy8ucGtnZGlyL2tlcm5lbC8u
IC9ob21lL3BoaWxpcHAvbGVkZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvcm9vdC14
ODYvJwp0b3VjaCAvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9t
dXNsL3Jvb3QteDg2L3N0YW1wLy5rZXJuZWxfaW5zdGFsbGVkCkVSUk9SOiBtb2R1bGUgJy9ob21l
L3BoaWxpcHAvbGVkZS9idWlsZF9kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL2xpbnV4LXg4Nl82NC9s
aW51eC01LjQuMzMvbmV0L2lwdjQvbmV0ZmlsdGVyL25mdF9yZWplY3RfaXB2NC5rbycgaXMgbWlz
c2luZy4KbW9kdWxlcy9uZXRmaWx0ZXIubWs6MTA2ODogcmVjaXBlIGZvciB0YXJnZXQgJy9ob21l
L3BoaWxpcHAvbGVkZS9iaW4vdGFyZ2V0cy94ODYvNjQvcGFja2FnZXMva21vZC1uZnQtY29yZV81
LjQuMzMtMV94ODZfNjQuaXBrJyBmYWlsZWQKbWFrZVszXTogKioqIFsvaG9tZS9waGlsaXBwL2xl
ZGUvYmluL3RhcmdldHMveDg2LzY0L3BhY2thZ2VzL2ttb2QtbmZ0LWNvcmVfNS40LjMzLTFfeDg2
XzY0Lmlwa10gRXJyb3IgMQptYWtlWzNdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvcGhpbGlw
cC9sZWRlL3BhY2thZ2Uva2VybmVsL2xpbnV4Jwp0aW1lOiBwYWNrYWdlL2tlcm5lbC9saW51eC9j
b21waWxlIzQuMjkjMC4xOCM0Ljc2CnBhY2thZ2UvTWFrZWZpbGU6MTExOiByZWNpcGUgZm9yIHRh
cmdldCAncGFja2FnZS9rZXJuZWwvbGludXgvY29tcGlsZScgZmFpbGVkCm1ha2VbMl06ICoqKiBb
cGFja2FnZS9rZXJuZWwvbGludXgvY29tcGlsZV0gRXJyb3IgMgptYWtlWzJdOiBMZWF2aW5nIGRp
cmVjdG9yeSAnL2hvbWUvcGhpbGlwcC9sZWRlJwpwYWNrYWdlL01ha2VmaWxlOjEwNzogcmVjaXBl
IGZvciB0YXJnZXQgJy9ob21lL3BoaWxpcHAvbGVkZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0
X211c2wvc3RhbXAvLnBhY2thZ2VfY29tcGlsZScgZmFpbGVkCm1ha2VbMV06ICoqKiBbL2hvbWUv
cGhpbGlwcC9sZWRlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9zdGFtcC8ucGFja2Fn
ZV9jb21waWxlXSBFcnJvciAyCm1ha2VbMV06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS9waGls
aXBwL2xlZGUnCi9ob21lL3BoaWxpcHAvbGVkZS9pbmNsdWRlL3RvcGxldmVsLm1rOjIxODogcmVj
aXBlIGZvciB0YXJnZXQgJ3dvcmxk4oCZIGZhaWxlZAoKCndoaWNoIGZyYW5rbHkgSSBkb27igJl0
IHVuZGVyc3RhbmQuICBTaG91bGRu4oCZdCBhbGwgb2YgdGhlIGRlcGVuZGVuY2llcyBmb3IgdGhl
IGttb2QtKiB0YWtlIGNhcmUgb2YgaXRzZWxmPwoKSSBoYXZlOgoKcGhpbGlwcEB1YnVudHUxNjp+
L2xlZGUkIGdyZXAgLWkgcmVqZWN0IC5jb25maWcKQ09ORklHX1BBQ0tBR0Vfa21vZC1uZi1yZWpl
Y3Q9eQpDT05GSUdfUEFDS0FHRV9rbW9kLW5mLXJlamVjdDY9eQpwaGlsaXBwQHVidW50dTE2On4v
bGVkZSQgCgpidXQgSSBkb27igJl0IGtub3cgaWYgc29tZXRoaW5nIGVsc2UgaXMgbmVlZGVkIGZv
ciBrbW9kLW5mdC1yZWplY3Qgb3Igd2hhdC4KCkxvb2tpbmcgaW4gcGFja2FnZS9rZXJuZWwvbGlu
dXgvbW9kdWxlcy9uZXRmaWx0ZXIubWsgSSBkb27igJl0IHNlZSBhbnl0aGluZyBvYnZpb3VzLiAg
T2YgY291cnNlLCBJ4oCZbSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIGRpZmZlcmVuY2UgYmV0
d2VlbiBuZi1yZWplY3QqIGFuZCBuZnQtcmVqZWN0KiBhZnRlciBzdGFyaW5nIGF0IHRoaXMgZm9y
IHNvIGxvbmcuCgpJ4oCZbSBleGNpdGVkIGFib3V0IGJlaW5nIGFibGUgdG8gYnVpbGQgNS40IChl
dmVudHVhbGx5KSwgYnV0IG5lZWQgdG8gZ2V0IHBhc3QgdGhpcyBibG9ja2VyLgoKTXkgcHJvZHVj
dGlvbiByb3V0ZXIgaXMgYWxzbyB3aGVyZSBJIHRlc3QgdXBzdHJlYW0gbXkgcHJvcG9zZWQgY29u
dHJpYnV0aW9ucyBmb3IgVGFjYWNzKywgeHRhYmxlcy1hZGRvbnMsIGV0Yy4KCkFueSBhc3Npc3Rh
bmNlIGFwcHJlY2lhdGVkLgoKVGhhbmtzLAoKLVBoaWxpcAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
