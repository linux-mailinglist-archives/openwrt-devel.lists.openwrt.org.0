Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6011867B7
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 10:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ikmei9fYKUfjAZ970yzIfxt+SPi0RqAK4V0ei9rRQNg=; b=k8SL94Cxsz2Rgg
	YbOJxZdOHjuCUk+497mPW7XBj5ytYiPs2RKHcidZiBYpW2/kXWiSN+mJoL79ywBhsKxrix5iQ6l0H
	cF965ArRBKyQmgMQoTw7bZl31DFyXuiDOut2xzl/bdsnZFSIn4aVisuA8ei1NVhL96NN1k/++w7df
	NqWOPSxvQzNeRgK0cx64x80/ds/Cnsc5cGfX0GVrolMe+35u7kC3m76qC3bXw58rZSsUDsTszuVNE
	pOS/j8U3tLlni17UdmbvcyoCtNw/DZNEVwDNjEisAx0U+/QgW0tDgB4SgQWUlMSUyEdgZDWJ83WF2
	pcNn2I1qyIAEOgInbsiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDluR-0007e9-37; Mon, 16 Mar 2020 09:19:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDluK-0007db-EL
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 09:19:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 659434238;
 Mon, 16 Mar 2020 10:19:26 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b8e641ee;
 Mon, 16 Mar 2020 10:19:12 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 10:19:19 +0100
Message-Id: <20200316091919.16765-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_021936_630195_CD4A99A2 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] bcm27xx: switch to 5.4 kernel
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QmVlbiBydW5uaW5nIGl0IGZvciBhIGZldyBkYXlzIG9uIFJQaTBXIFBNUyBzZW5zb3Igbm9kZSBh
bmQgb24gUlBpNC4KTGV0cyBzdGFydCB3aWRlciB1c2VyYmFzZSB0ZXN0aW5nLgoKQ2M6IFN0aWpu
IFRpbnRlbCA8c3Rpam5AbGludXgtaXB2Ni5iZT4KQ2M6IMOBbHZhcm8gRmVybsOhbmRleiBSb2ph
cyA8bm9sdGFyaUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4L2JjbTI3eHgvTWFrZWZpbGUgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90
YXJnZXQvbGludXgvYmNtMjd4eC9NYWtlZmlsZSBiL3RhcmdldC9saW51eC9iY20yN3h4L01ha2Vm
aWxlCmluZGV4IDdjYzJhYWI3MDA5Yi4uZTc1ODU3NzZhZmM5IDEwMDY0NAotLS0gYS90YXJnZXQv
bGludXgvYmNtMjd4eC9NYWtlZmlsZQorKysgYi90YXJnZXQvbGludXgvYmNtMjd4eC9NYWtlZmls
ZQpAQCAtMTMsNyArMTMsNyBAQCBCT0FSRE5BTUU6PUJyb2FkY29tIEJDTTI3eHgKIEZFQVRVUkVT
Oj1leHQ0IGF1ZGlvIHVzYiB1c2JnYWRnZXQgZGlzcGxheSBncGlvIGZwdSBzcXVhc2hmcyByb290
ZnMtcGFydCBib290LXBhcnQKIFNVQlRBUkdFVFM6PWJjbTI3MDggYmNtMjcwOSBiY20yNzEwIGJj
bTI3MTEKIAotS0VSTkVMX1BBVENIVkVSOj00LjE5CitLRVJORUxfUEFUQ0hWRVI6PTUuNAogS0VS
TkVMX1RFU1RJTkdfUEFUQ0hWRVI9NS40CiAKIGRlZmluZSBUYXJnZXQvRGVzY3JpcHRpb24KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
