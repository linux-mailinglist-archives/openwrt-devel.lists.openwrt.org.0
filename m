Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B316AB3D
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 17:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S7yeq4Z+CVb9eSrEcU3JWyITazydLb7d2qSfsVpe2KM=; b=Eq/mx/tRnLwKUq
	z6YgNtkqvQWI0F74xI8KDg6I/hWvkhIHk8wH1Q2rfyRWOmZN0HhBPOB1XZ63xr9MSE98ZC1ulkWIw
	keDV4zXIYjt+1oyA07jVOufgI4iNfO4azX1qzqciHHTlVKAF6L/yA9XPCs/aQDTjyDnr+xts8ljdM
	GTnzuQF0sPXkCIjerU2CA2Q9y8P5Wiis414OKJPjmTeiO9tNYtNenbvhfmUd+zPFkOfdcBIYGF9qx
	aBo1cujqY3oBizP+0lhO8WigPYJA9PcFeq64o8F4E03uh5g/EHBDAf7yAaYbN+8UoTxY0N3dkzbgg
	4kn2Tnhu1CjUZx5uNepg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GUH-0007HI-KY; Mon, 24 Feb 2020 16:21:41 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GU8-0007Gr-MQ
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 16:21:36 +0000
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1582561287;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=PTIQK6P1z3htZ4Fen4AEq7KJY5Q=;
 b=0vOI8Bj25LNzqovqtTpeC+inJFjlhT/5/r/umL/rjYNKJLyva/HNdXwMOQxY78x9
 iFilZwiHuQ8JZfi+auOlytMu/DbhDaSXdRM5znBn5vuS8UkPdtNrs+KZz/e4z9X2
 Plw0Nux0/3PYf/laGig5MDuczW0usQt5UWY8k8gZojIgxD3l6Asxxw18tHhez8D3
 olE81c0bXARwTdsejDGj1effCnIkPpuidZWdMc4qnstlcSQcfG7IluOQzHhYji3z
 b7DHfuPQfZy7N00pgflndyoS24/+5n2DSnjatOvDR+7onv5h+k+WfEC64AX/H1t9
 Qq5Wu7JEYXszvnDDg8nm1Q==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=D8Y51cZj c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=l697ptgUJYAA:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=voM4FWlXAAAA:8 a=jdP34snFAAAA:8 a=hyjRijTTWD1dbwNo43AA:9
 a=QEXdDO2ut3YA:10 a=IC2XNlieTeVoXbcui8wp:22 a=jlphF6vWLdwq7oh3TaWq:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp03.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:34724] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id BE/68-29377-708F35E5; Mon, 24 Feb 2020 11:21:27 -0500
Date: Mon, 24 Feb 2020 08:21:21 -0800
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200224162121.GA3700@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_082132_777091_8DE6AA9D 
X-CRM114-Status: UNSURE (   0.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [206.152.134.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] tools/firmware-utils/mkcameofw not found
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Some D-Link/Trendnet devices use a cameo signature and I found prior
posts regarding appending about 40 bytes of code to rootfs.

https://patchwork.ozlabs.org/patch/699611/

The post suggested the use of tools/firmware-utils/mkcameofw.
Presently, a build had the error that mkcameofw (also tried cameofw) was
not found.

If one looks at the OpenWRT device pages for both the D-Link DIR-810L
B1 and the Trendnet TEW-810DR, both describe using ncc_att_hwid to
append the signature.  ncc_att_hwid is included in ghe GPL source
package from both D-Link and Trendnet and can also be obtained from
DD-wrt.

https://openwrt.org/toh/d-link/dir-810l
https://openwrt.org/toh/trendnet/trendnet_tew-810dr_1.0_1.1

Couple of points:
1.  mkcameofw seems to be broken and unused.  Both the device pages
describe the use of GPL'd ncc_att_hwid after the build for the initial
install.

2.  I've searched for the documentation for ncc_att_hwid and cameo
signature and only came up with it being applied in OpenWRT/DD-wrt.

3.  Users are working around the broken code manually.

4.  ncc_att_hwid is GPL'd and could be included in the build tree.


-- 
J. Scott Heppler

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
