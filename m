Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F179719E9B6
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 09:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k7AmpS9p2TE0wpWYvkadZpUYNCf1Pi9PkyKXnKmpmsI=; b=jLpeoW7Ssm2XjS
	DMFck0NmY34oE8fjR1sdnGQUiugyYqVKdozAcuHIVLJKkshbpVDBQGVtEjOiwxEOGu7DWILS+VxAQ
	kwzcIuYvBT8EC24rqHrui515Mn6bE+zfzGx4dVCmXruJaqjK/urhF6fdw+ylcahkRb0Q+aN6aAj36
	vn0wL5HVtJAQchN5EE4/frK+uZtnurE8oJFHznamH+0QVcwznuwlfj4GrZCjX96fJMXaFSh0NOwh3
	T5GwtjFElvop3o29RFKJy2+YabFjT0TO8pyRh/K1IB3c/vnhUUdHdif8XaEaOvo/PfKcVKvJmo7bo
	tvN9MDyIFKXwclffLqvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKzXm-0003O3-Db; Sun, 05 Apr 2020 07:18:10 +0000
Received: from mail1.systemli.org ([198.167.223.214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKzXe-0003Nb-Ew
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 07:18:04 +0000
From: vincent@systemli.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1586071061;
 bh=HXz+gtrDO/PDLB2OrCw2O2rmzLOKQoziOTpSyUxRNDU=;
 h=From:To:Cc:Subject:Date:From;
 b=QBw4B8O9mE7tZuSxQ6TkUctEj/3JOvhYWlwpnqNJ11RNlHVBvd3Y5WaNNcejEfNoy
 EtrRomtI46sLQ+Cn7oFtn0qHP0B0ooln4MQNTFi7F0znIQ4pkSgbuRAGle3l11fuOs
 dkrsCGIekHJ09898XapAJTQZ9J3Rh6JTMVT1NgFClceZG3qYo2wPZENefLWH6AjRS2
 7Ql9bgC+dH6dcBxjS6OsSq2sWICca4igff74HSL7eFzozfNeXfjsV8ApzTqQr9Dg3f
 UOWqQJVafe5eeLIl8JuHY1ZW1QC0YbRjyDWLEQQY/5HTjQ0rUHzNTRADn/hnN7lEoN
 yxsyJwL1n6iug==
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 09:20:12 +0200
Message-Id: <20200405072012.86761-1-vincent@systemli.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_001802_933108_DD2D1C5A 
X-CRM114-Status: UNSURE (   4.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.167.223.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] umdns: fix unused error
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
Cc: Polynomialdivision <vincent@systemli.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Polynomialdivision <vincent@systemli.org>

Umdns does not compile on target-arm_cortex-a15+neon-vfpv4_musl_eabi.
Add the ttl variable to debug output to supress unused warning that
leads to an error.

Signed-off-by: Nick Hainke <vincent@systemli.org>
---
 interface.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/interface.c b/interface.c
index 9c5b048..d3f2ad3 100644
--- a/interface.c
+++ b/interface.c
@@ -244,6 +244,7 @@ read_socket4(struct uloop_fd *u, unsigned int events)
 		fprintf(stderr, "  dst %s\n", buf);
 		inet_ntop(AF_INET, &inp->ipi_addr, buf, 256);
 		fprintf(stderr, "  real %s\n", buf);
+		fprintf(stderr, "  ttl %u\n", ttl);
 	}
 
 	if (inp->ipi_ifindex != iface->ifindex)
@@ -316,6 +317,7 @@ read_socket6(struct uloop_fd *u, unsigned int events)
 		fprintf(stderr, "  src %s:%d\n", buf, ntohs(from.sin6_port));
 		inet_ntop(AF_INET6, &inp->ipi6_addr, buf, 256);
 		fprintf(stderr, "  dst %s\n", buf);
+		fprintf(stderr, "  ttl %u\n", ttl);
 	}
 
 	if (inp->ipi6_ifindex != iface->ifindex)
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
