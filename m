Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC508A5DB5
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 00:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oivDNZP2eECKcHzesAVG2YbIyA5b8ohKpBG2EP8kOKg=; b=gRt
	7hxkexwAPlALEn+DxzO7A91BJHt/YbU0Nlu5V14THyr0nzBBF9G8Jugyw8/XLOmRqXsciWBwHBZhJ
	EXvP//QylIsf8yxxsv8RhqfR2l6t8koW4d9cE3Ytq0wxifT8xhUY0Cd7tSJrClYbA1KV64q/4/BBI
	eD9UNT4ZOsNfyyi8h06VX334SGYwoZ/YzN3mzuUjJKGuNuD9/OotYGh7tu2h3PJTFTMZSuVe3GfTr
	TrGFQv7G7FhIy+RAyLBO7M6kGOZv6NPmu1X5GaCtMVN3uR/n8V1y9tzYOWqq56UWe75bPTpxmYwDI
	N9hogFaQL5Rzuw8ue99zXzdwJjkhOFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4uNv-0002LL-O0; Mon, 02 Sep 2019 22:01:15 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4uNn-0002L1-Qp
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 22:01:09 +0000
Received: by mail-io1-xd2b.google.com with SMTP id n197so29595047iod.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Sep 2019 15:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=xz0pli6YW41RBP8R1BVqR1vR9Lj2SWyGUzJVH5B2WMQ=;
 b=RipifZv8BUaB76muzKrGQIl3fErJB7FzwKTX0F+UZ8bbu6jk8OvbfOcRgNWOztMFlh
 Ng9NFlxVY+7eIX0tpZOdDg1MhpzsZOYHRviY7bHMg8fb4EBsCLN1dcRfltc2ZJbyLwQ2
 t+SKLhD7eMqphzprPPkuzMtVLInCl4cGRcH0S8sR6RjXVcVBoNxCKfsi9UlLAxm/sLoj
 ypPdRUKC5SzDSL98KvvBr9cMXps2xV6RHbD1g9kn25E/lcbtS2fB/7QU80qCuu1M+pa9
 mbz7Onok12Q/95cALu9v5j6wlxo4LI13Q+B7cCiULAKPVJeNve3iMWC3x1vPKbahP09x
 Ob5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xz0pli6YW41RBP8R1BVqR1vR9Lj2SWyGUzJVH5B2WMQ=;
 b=WT1+bA1u0CfWj2U98oBIln0exY3ItB5DMOZIAjrCkmhlqy+Fhc1lwVdRRZVLx71Bn0
 UXoKU1hQ3oUgUCby1EDJKmEfpJQvDYl84MR2SH0DvTy1eWpNSkEn6BlS1zVtW/NH7lbN
 Z4PF78yazKIb6iJfoxifngUY+qrga1l4JfqH4hj/sRYOTnp1Fljj9GevAK4+kcKTlKnK
 +YWeeLPV4f7jBY2/Z5+GxqT5p9Vw3QNZb7rTfbNH/uZARPWs0dMpxqJ8Oglj4+f6jySl
 fCaQr1g1+ZBqa4kR0cr6RSXOM0XATXFXp6TCbOJrs9bvC2uc9zs48DQJWdGAuT7gZh1Y
 B+jw==
X-Gm-Message-State: APjAAAVRy/ZKi1/cCg3hyipoduThgOkKOK8vdZv/I15ylRAXlcpySRJp
 1BNlu5j/2K9h083PRavlmnQn71iEfRm6f63uyo/PKdK1
X-Google-Smtp-Source: APXvYqxWcH5pRt3iRGdNm7hx3Ok85cmMQkjbK7/xXDbsoRu5Q1ZornldfiULbW3zUsSFfPwdjr9T3c/SM20Fgrui/RE=
X-Received: by 2002:a5d:87ce:: with SMTP id q14mr2296118ios.248.1567461666079; 
 Mon, 02 Sep 2019 15:01:06 -0700 (PDT)
MIME-Version: 1.0
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Tue, 3 Sep 2019 00:00:52 +0200
Message-ID: <CA+_ehUxzUK2kDjFMe9rP2qQQ7PiP5Hxsf6AHj07XeAueS97NjA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_150107_897999_097B6D66 
X-CRM114-Status: UNSURE (   2.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 TVD_SPACE_RATIO        No description available.
Subject: [OpenWrt-Devel] fstools remaining patch
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Any news about this 2 patch I proposed?
https://patchwork.ozlabs.org/patch/1116586/
https://patchwork.ozlabs.org/patch/1116585/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
