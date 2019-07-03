Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CF25ED5F
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 22:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EHJNs7gbxUqK+dgo/Xs9cWj1i4+otA/oB8CkVhmkLH0=; b=R2hiprY5nxQo1m
	7rk4CutMmb+r5KO/CZOpnupTqgp5RMqVPO6WFA2B+wdRVdnD2dVfNj31vLvOw4/ZsPO3tPW+W0ovU
	z0slM7gCMsXWMOvWMNxUmdGPuLgwPPwhmSeW07n/KhBFUMlRY0o7X4YIUnc99SnraBwvihjyn6sH1
	a3wXUrkBuYCVh2Au7faJGdbvp9x0p87voWZi90J2I+2/sjCC1BG6ZxtdtQnF0VP695oKH6Z27CX7q
	JomQWaJZD2u1iu3JWD7ljssr+LxwwwtaAMBzQpxtFseWnyaWVeez0GsNrZxfU6NWpo0r+9PGPXtV2
	vrR55abkbHlRiNX/11WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hilgn-0007gb-0z; Wed, 03 Jul 2019 20:17:13 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hilgV-0007dW-6o
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 20:16:56 +0000
Received: by mail-pg1-x52b.google.com with SMTP id o13so1754572pgp.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 13:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=6wM5BLuC7TvTK5irs6zPk+8Kthjhdlg/lBj/Ca5BlAs=;
 b=TZV+lIO7E7JoHhow/WVBlYUQreVdO7WPOn8ZiXEzvglwdWxsXwqkMBIyZBlh7WXZAW
 720+HVGbRw5k6ZHSHIpL2FGhmCU0WW04EWhh2O8D3gn4F6TMDE/OExeJ9+vEdOaLcpUq
 GK+SQWcaT/iwl65gIqSdAU2OwQ5RuHos03FTZhYY9TOjCPrBS0wIUkOUMQc5vb282e0a
 EGe+Cnvbi9nmtEA4xw7hMdLoDUKjJdx4OCIvKtpzhPTNiWljUdoVk6TftCBJsT6XDcaR
 3S5tRPdF2sTN0lpovgF3/sRBX1eyMSli8GeyAcUgH5F6CoLxL0h+CGduypqDeKUWsySG
 NB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=6wM5BLuC7TvTK5irs6zPk+8Kthjhdlg/lBj/Ca5BlAs=;
 b=U4//De8DbM9kpSqbWOVmLVoW1Nd3ecMH1tiqO1a/ZefahjWAxu9H1vpk8Rt3Nv8XDv
 z23WG0BsiFkizLqAjPIVuiJo4hWeEa0DTmBXlWNebtepAgYbi/Xb8qQBpDmRrX8N8bW6
 ONuInGrlSWJv/FhqA7SeL4hf02+CFt5cHg1fI17WZFo2N5UMw8IIWOsUrq+Xf+rWxq7Z
 XBmtJnyISeKdX243pq2VTKisk9hUJfoCUrewIsbC+tfkA9QQG0OkZ6sz7oaWTqqUuTVY
 VKWm5fiTTiSorrb9p/iBH3kEairb0zhKnYX5r4ce5QdPP2/SEqi13JCaf5K0b4f1fI6D
 3xKA==
X-Gm-Message-State: APjAAAWdC5iCqqNU/niSgvDHCrfmMOYiJzEZ80dUxgKCo17I02EP0Edo
 F6eNpNTcjPFbmaF+gzog0YTaR/qBxyM=
X-Google-Smtp-Source: APXvYqyWZJqI8YNC3TIed2a3EFkpGEDFzCyxUFlV01vd+P8CWYQQIH1b8Ng7a89qcEL8Iamef/UWWQ==
X-Received: by 2002:a17:90a:19d:: with SMTP id
 29mr15160941pjc.71.1562185013517; 
 Wed, 03 Jul 2019 13:16:53 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id a3sm3367283pff.122.2019.07.03.13.16.52
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 13:16:52 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  3 Jul 2019 13:16:51 -0700
Message-Id: <20190703201651.164-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_131655_243752_0D108857 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCHv2] toolchain: Don't force GCC8 on ARC
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When selecting GCC9 under Advanced options, GCC8 still gets selected.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Allow selecting GCC9 but not 7 and below
 toolchain/gcc/Config.version | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index ef9bbb82e2..2a9dc289db 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -4,7 +4,7 @@ config GCC_VERSION_5
 
 config GCC_VERSION_8
 	default y if GCC_USE_VERSION_8
-	default y if arc
+	default y if arc && !GCC_USE_VERSION_9
 	bool
 
 config GCC_VERSION_9
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
