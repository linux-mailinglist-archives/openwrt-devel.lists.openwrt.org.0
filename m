Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891AB4D41A
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 18:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NlVSMLIReKRfDocmZw0DoxeXXSmSbaLcxvYVa0akQ4Y=; b=iIS
	0hSPInynoTyD8eV7scGQDwwUJRwFAZ3P0oYXDtQY7+KP8QIy5HK8ISeayfkmRTaWHF8d6VR2G454i
	64zEG7oOL/u1mvQdCbLlZHTguP8Gjwy56P/ZBU+ZmYUD55YbvKRUd8lbOtgQuXMeW9chUAVH6pztd
	ZcsJsvkThgI3aqsXj13XGiClEX9mDNUcbM+YAoliHK+WXkfWAIacD0dIlkiCvSgjt3ngN8+bTRfYL
	sr9ygW5Pdxy4qC+Dd0xHE6kOELon3vdGPmOQki1fpgvHt+41avs6QCgVJbE7S1PCRAH7fFn3CTVQN
	QjccwMtseu8zzu0udeedI8V0oYG6T+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0DA-0008WP-Di; Thu, 20 Jun 2019 16:46:56 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0Cm-0008Vf-Ns
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 16:46:33 +0000
Received: by mail-io1-xd36.google.com with SMTP id i10so207949iol.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 09:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=IT3Sj+1zj0B55d8NOk1DOJMRzIg0PcHMXaI/kMCFoTU=;
 b=H0DGy327rz0HCELZjvAp3N0/Unb41SVEB12thxmDuROoOGB0P5nfe/4nRkz0swRhmo
 7jTNxKVluA1zXYEjQ5Bmd40kFRH9CDKNrHMQoxUT2kxwHq8SeWG2UzIsSJXJnRQYCHFs
 3M+ijbh4xpPnXtJjS+D7Txt5IQgVM6IZc6lnRbQOi5unHGBV57FMgaTk+9VDisrsbsLF
 BRO0aocq1A2AnTTbxwPs0VpBJLZDfl4v/t7gy4fKBVS0QI80aZo8PyrKmQHhZ22KeFbY
 /fQiy26yrQvkGcHHSnMdludZHlQIaiZBzlwZh+qp2qEZS7CFBLMQaeFa744SPmYYVmp0
 gmpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IT3Sj+1zj0B55d8NOk1DOJMRzIg0PcHMXaI/kMCFoTU=;
 b=gqPhi1RjjMm5xInl/fcD1cQM7QMJaunnbuRQwCSfypS6Fdu1sky0K4SQ/e1cS55WH4
 bn2i1zF9gKz8lu3zIlVMNMHYJle1Ld1UeTsHeBIKEngMqM/+llKV6t3FSt13uu1Qr/Ip
 Q/2U96PL4Ghnd5lPIPQGwCkTCsxrpqQiTd7gq18clJDDL7i7gVDOhEb62evEM6xAdf+L
 boKzh5IIrzg6I4rMLljIDBovOL3Lvc48torgg8OYbpkDUND50rAWAcLOPKswX8am2GuP
 WOaWqMpL8loSESSZqwlv08Tdushik29wK+/6miwZZaeXAgTit2m1O8Y4u+zECpcXzjNw
 fKcA==
X-Gm-Message-State: APjAAAUek4vEIuAmsRJhUaaE+sDJy87ZrTTN9hL5rjgpjI8RPj8g4wIk
 jfn5VP85JwHWipK0i1tT+8UdH30uzgKkpYTOKCyy2iZ7YzA=
X-Google-Smtp-Source: APXvYqzCAdzTC2HQcClXCAzeA3zbc1Nif5AMp4FuX0vGhsqdmEMSvqtT26ldkQNt/zt1SfWDxBXHToZ8VRbTrOyqcxY=
X-Received: by 2002:a02:cd82:: with SMTP id l2mr1886837jap.96.1561049190925;
 Thu, 20 Jun 2019 09:46:30 -0700 (PDT)
MIME-Version: 1.0
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Thu, 20 Jun 2019 18:46:20 +0200
Message-ID: <CA+_ehUwmEv7dj5AquSYvxu3XPZ7Tu5mZdbmhnnGVpmGD79NCCg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_094632_810927_977A7E58 
X-CRM114-Status: UNSURE (   3.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d36 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] block bugged
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

Error loading shared library libjson-c.so.2: No such file or directory
(needed by /sbin/block)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
