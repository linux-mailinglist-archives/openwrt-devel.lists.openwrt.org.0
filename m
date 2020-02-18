Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42DC161EFF
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Feb 2020 03:34:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:MIME-Version:From:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MYeKYWAEOzBlJ1Ii/8P7oXQG6sHVtGoNXWgpaGQvm78=; b=Svxcm8bPKOJZmJ
	pKo5rHMtdfeoIwI9xkzlHQb0eqpsrs6BMIBwY4lSY+i7aOF0H9HU5qtpHa4YDQFpFwcmOqVGaA7Tj
	6j2mFkrouXt8y6CNNuJ1Ft7K5q7uM05tltEMo4GrrZL03bOpiMqSLBFBJpipC9oJYFvgqBaNl35ov
	0ezOYnc+jcFaSugEZuz5aLd1NTbr+BVfMt2e49P2yuDkqgbEtcVHJykCMRV1ql3+ftoFn8Tb+PpF5
	/35dOFhZ3rszXF9F4iaPZzgTZm6tVn/a4Lm99fnhF0a6/PJuGlR8zmAuQTViJFjEnLFwFrxIOqi8q
	ch3R6pDUppv+vH3KY2Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3siS-0000vq-1r; Tue, 18 Feb 2020 02:34:28 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3siK-0000vV-O0
 for openwrt-devel@lists.openwrt.org; Tue, 18 Feb 2020 02:34:22 +0000
Received: from [10.5.50.155] (unknown [144.139.72.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 9A0974346D
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Feb 2020 18:34:17 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 9A0974346D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1581993258;
 bh=aMua8mAM+uYdVwS/RYWfdIQGUwkrqJjGAPCt8vWVurI=;
 h=Date:From:To:Subject:From;
 b=g8R00ClANnxjxXIZDMTSJCvjgnoswrz+jJUKttJnMOfoDDRwZyHpLTqLZLdU/5buu
 6Du+rKXhtkJphbhnYpxN/D/Td8LaI+j3aOdA8Y2H6X2lXNvldWyfH3jf+P7//t9fEC
 E3gNysxC1pGm+o0FkZcl37+omYy50E7hrm2/EZRY=
Message-ID: <5E4B4D26.9030808@candelatech.com>
Date: Mon, 17 Feb 2020 18:34:14 -0800
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_183420_806665_BC4E560D 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] New ath10k-ct driver,
 supports vlans on 10.1 firmware.
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

Thanks to Matthias Larisch for adding support for AP vlans on 10.1 ct firmware and testing it out.

Upstream commit ID:

bed49a5f6824fcd8757fd27f6b2a4f6ea933bf2f

If someone can pull this into OpenWRT and test I'd appreciate it.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
