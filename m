Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E71316F02D
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 21:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pqaEFkOVGIDsBXPPJTUvKiMILPvWrz2/HFw8X98laus=; b=cwbHuUDxgs6OCW
	Av4mxaJF4HZRRtJU1aO0F2Wu3+DinBhuD5ZsZmirYZwsMD1Xf6IK7Yl6QoyX7h5+K08pLsTdqkwTC
	cI09RUPgsG3Z+SZctlRivBw84oeJw0hpzZjwhJd5FEk/ysMZKE/wyBuAnhM12Dc+8PKkf/Xj4/+HC
	B6kqVYmAreMJVX4VNzGKvgu3N7/DpZJVyRGUKdKKxr6yMWCQToiQyFnHlz4J7/IflWfV/p/dKpy14
	7G+acOzzOGfmWJrZ/fGsFcN+x+DpQT9Yk8EXhs4ilf3MJlUD23IUYl8OpEp9U0C1JEG/6TvPwEHp6
	4fPkilHyiWAA9XDF9xHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gvE-0007LS-VE; Tue, 25 Feb 2020 20:35:17 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gv7-0006cc-5r
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 20:35:10 +0000
Received: by mail-wm1-x330.google.com with SMTP id m3so658271wmi.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Feb 2020 12:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=PhfeKufbxidNljXbaHS7ZA1J8GDdc21FjMKgWzkx3f0=;
 b=TkMTGcSOJpOJZLSH8a3sHoY2wfyfzZnyVed61oWet2AmLu/6pX3bznO6NLpt1bBVws
 5lm8NabRNedcfZuGwgac5c+LilWs7dYrmEVlGDLdbAqVtRKRkaW1YFm+2WJkOta/U/ai
 YkjcamRBsC/v0d+Uiuk7gSjXpWr8liIugjsjsZ2Gxj4zojjrWxcKnpyK6XjK57EXLPz9
 W70zbvR3hrpnKfDnnUshMCpSrhtXDYdlFQTUe0sHiLHye+wTsYU526AfCdW8sRPAnHLI
 y80M1nrvAwZHMZfRE2JbrGFpzh2n+8wrRwWDi74rZO5ZmVXQaMcq+5oIatqEtUggeRgM
 kjQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=PhfeKufbxidNljXbaHS7ZA1J8GDdc21FjMKgWzkx3f0=;
 b=CjlOmbWjIbnOkfrYCai4aB0kJUcv9LGvEv5570XQ+rvl6A0ANuSglRMn0p8s5uRQ1e
 un0WF6c2aGo3o/RUK9OW7JXu+DtxdRQBH10qDgp1QmaVF4Ag2WUJcMMQUqM4WTzBSW7M
 Api3DnSbqTStJFIBaaOxUyZoVORSrrYXbdOhyYG7r3nZwJHAjZ8P86isSmkSBIy7kVc0
 eJ8Bxdr9qlVoH3Q3vSG7lgSw8/ydj1GUHfIf6GhAArdeT9N+ZeyDPnJnSEWGSp8xjigC
 yHwi62BBCMD7NLtj7jViT3K0BQMnwlRH8odizjp4jR6FYWA3mxDsAZ6Af2Im537XfaWT
 EfLw==
X-Gm-Message-State: APjAAAWnJtPC+l16ZffqCvKi8rC0kuMYifD9T5RLn06Z7f1FFP+23ihb
 yZcaY9H7WaJsRqcVdern1YOp9QB5
X-Google-Smtp-Source: APXvYqxVAe5wM5sdhEQbW1SAGtaur83jdk+qb1ff4KKf2NLyyfKe7FOOsJSnzAIwawRRriCu1iBFNg==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr984559wml.138.1582662904414; 
 Tue, 25 Feb 2020 12:35:04 -0800 (PST)
Received: from localhost
 (p200300F6671636AC892FB1B853D25137.dip0.t-ipconnect.de.
 [2003:f6:6716:36ac:892f:b1b8:53d2:5137])
 by smtp.gmail.com with ESMTPSA id z1sm5550756wmf.42.2020.02.25.12.35.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Feb 2020 12:35:04 -0800 (PST)
To: rosenp@gmail.com
From: e9hack <e9hack@gmail.com>
Message-ID: <0a08710a-9438-cbc6-126f-7a8b278e75d0@gmail.com>
Date: Tue, 25 Feb 2020 21:35:02 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_123509_260317_F3309854 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Stubby is broken
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

stubby is broken since this commit:

commit	eaf522532324f9155d2d038e27006e5caaf9874a
stubby: makefile and init script cleanup

The necessary config file will be not create:

/etc/rc.common: line 21: can't create : nonexistent directory
mv: can't rename '/var/etc/stubby/stubby.yml.12277': No such file or directory

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
