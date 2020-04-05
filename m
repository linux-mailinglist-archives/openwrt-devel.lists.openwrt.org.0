Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFBE19E9D1
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 10:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hgys5gNXYuTbRBN8uwxXc1VitvKBiDIQy/OtsgCJIPs=; b=MaEYAaco6W9eAz
	gnQnHIMFrTSKPzkABRvRIQOEnHJYJJUVMjKbbKA3GahoOY6q3LHypWZR3Yus5RZrQOVMjekV8FZmW
	9NMahd0IIK5kKBP2fjY7NJZ3N6G6irGDNcNynxiOoM7bkADcakwAU3TKIuYScGv6zEXMlMuoIDkVw
	Y5M2+COLjvRzm2WOK7hrYJodkLlWjUXz7WW8A0g7sLp0/VRquJ7Aejy9He6SIVFISdeJToXeXYKhm
	m2w7rv2wXwNoYvp5N0/OUQaANi4OQn5fh+p5pPuanzNFxX8mb65gdm7bihxX8+jncbBBANZJGlu8+
	bJQdHcrwsaR2aDxC7nhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL0D8-0002Y5-CQ; Sun, 05 Apr 2020 08:00:54 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL0D2-0002Xh-C0
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 08:00:49 +0000
Received: by mail-wr1-x42a.google.com with SMTP id h9so13591207wrc.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 01:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hF+npCYeTe8/Jbz+q22G0PsW/pbLeZi39jrKyoDmZNo=;
 b=SzeLZYpa/oOyzsYscPYqwMy8A8fAaGjpJHZ8qUvekql0HD9MeUlhlNLAHYMLuRO6sv
 5Acfvfj4uAVcakSIp8N+a6GFreWfoHpOhC3/VyeOl9TzKrhgGROOFM7lygMeNkcc1s+5
 nJCv8JdtStR8EMY85aa2j226wDQBZEsywevz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hF+npCYeTe8/Jbz+q22G0PsW/pbLeZi39jrKyoDmZNo=;
 b=WGa0fEPcrdqT7jC3jJ8hSbqsdwsi9tV5fjKbTpcqz9OcoLk8naYpIS5QJARrHdpcUD
 ciePUJtBxCsZ+nPpmgCXA9LCtcT7VRiUzFrdWoDRYtlZl/rCFkyf6J/6ogbllwlnwz6j
 s1RV7w1Degs11IyXtnrwxveg65HdVbIn+PXXN0uar6jnnmTVTJqZ6TR0/ipXxbVanaxN
 QB04KeuJ/lOu7Dzi5Dx6kINg5Pn23BcLBSoRsWAyhjrZI63aFkT+/LyubpmS8/GPxVCU
 BNzokWTq3oJTpSALi3QtxspYMwhEAQFX4+miwYnzOUmzXTfq1lZAqrKS2X34paUzv6i4
 SLeg==
X-Gm-Message-State: AGi0PubVOucrIeMj8SOUBCo0pCPT3O2GqCd+Q+9aLZPCfryOTqU908uA
 hcyvE58CwnEL3SirJV1g0/tPh6tMujM=
X-Google-Smtp-Source: APiQypLRUtZf3jSV5v8Z3EiXhL2RSG1OefuXPblZXT9ghJbkAk1+uIvoChGnh+n8jMsjPYIlDBfx6A==
X-Received: by 2002:adf:cd8d:: with SMTP id q13mr518082wrj.400.1586073644879; 
 Sun, 05 Apr 2020 01:00:44 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id a12sm17298378wmj.22.2020.04.05.01.00.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Apr 2020 01:00:44 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 09:00:42 +0100
Message-Id: <20200405080042.90240-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.1 (Apple Git-126)
In-Reply-To: <20200405072012.86761-1-vincent@systemli.org>
References: <20200405072012.86761-1-vincent@systemli.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_010048_406632_7470522A 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Merged: umdns: fix unused error
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
Cc: vincent@systemli.org,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged.
Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
