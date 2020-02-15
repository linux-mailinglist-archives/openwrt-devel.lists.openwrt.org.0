Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE51715FD52
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 08:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5xug9VHqkOZwZBbPBqdn4nI6ObYI4KeQmmOkBMMBQUQ=; b=oRKWoOaxSrg4vF
	HMrS+Tjk4UPr8ifsX9ENXq6VDJ3xVvPobkpMb1BV3r7rGDD0gVKQDbEMHdAVoeQTIbncyTyFxHJBW
	K0b71S9IHGYxgLhcxiOV4UhGgV8btJbNpv7qKuWB7c+ih2q9HJHFhKTU5as1baxKy3K/+eWVmmWov
	CpSwhVWKm157ZWYIMtM3IVSiw3BTy4hU6JJ+nlAIu/ZysrlU8Xuk4bHneTvJn/2dB8eBfty+2/mTw
	IXTK0t0n2a4MK1E9FNpg9OtbYm7gnh3lUFL48ckm35EPjUdXVXakEp/VSS//wArPSkEx8Lf2f+0cN
	y3rjs8m7wuebWXp5u1oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2roY-0005w1-SE; Sat, 15 Feb 2020 07:24:34 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2roR-0005vd-Nn
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 07:24:28 +0000
Received: by mail-wr1-x42c.google.com with SMTP id r11so13471114wrq.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Feb 2020 23:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=zIXO88XNcLAX5oM+bE3ljVn2azq9021Px5exwTyqqKM=;
 b=SOVHFwQNX1qboMSmYzf00HlJmPUn8H3zsOEkc3XdubguWnZBBr0BZzyKqzkN0Z6Fnf
 A+3Ae/lIoAMSa1mr4zgVt3FdRJQcGTeN2bjeQpBuGT7JTjbP1xIHluOGut92NECAiAc4
 jKQPedsx1ZU8n8VQ7fU//hhOeFdE7lufAnZoHPOwg8l6VSGliU9NBWFK3dNY/rO+wwmf
 pajM/9hwLP/SE/Kowaq7lVwhxbO7ieAFadlJToMhSAZq53nLm5ZOIvNN+UP21Qx5VRoH
 maN87zcC6lJsjZhJhLeMTQgzIvSIKMNyv6rAGQiQptWpPcvu0Vlt7apnOqhLotCY/yM7
 dlpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=zIXO88XNcLAX5oM+bE3ljVn2azq9021Px5exwTyqqKM=;
 b=Zj0sNEcLr0dL2/tVZTNnFGtjUaeG7ajItGqQjMsloAG+7ieGQgmnObYIJE5IGYuMjX
 dcDjSH9S9lFhmdn2JJeh2bnCkaKf90Bx8dRwinVKzKjtnj+roEWJO+uUtjDjxnxoQRNd
 fxWVJ83DlKRm1fu9m7Lw1oEUrvYxwMsQ0s83LREndr/T+Z+PRJkW+K4CjjPUAMMHjPg1
 2AEFtLhjZzBdsGHc7fTqofKJTuwBC2J2+qY08U5WfZ1Lckb/+HRrbLxYF5zS5YofzaSB
 +A/sRmBdH5A8XKmN0fai7JTdtHd66Q4PwiOkbjJTABugkAtshiM1D3Vvcyt2Y9s+H8ml
 ouqQ==
X-Gm-Message-State: APjAAAUjptWvKInEEMVjNOCirs/s+FBGVKKGNt94O4cffmEX6a4nF7tG
 2mRjgjBQFZ6KFvSnvOQUEnt70rD3RPk=
X-Google-Smtp-Source: APXvYqy4WrumVz3t+tNQfBItYMjpnZw25nk3gZd/uGvnMI9xI06KcRiIzcWeqNa/F2xvcPy1qhxUXg==
X-Received: by 2002:adf:e781:: with SMTP id n1mr9255688wrm.56.1581751465117;
 Fri, 14 Feb 2020 23:24:25 -0800 (PST)
Received: from localhost
 (p200300F66718ABAC958C975FF2DF2488.dip0.t-ipconnect.de.
 [2003:f6:6718:abac:958c:975f:f2df:2488])
 by smtp.gmail.com with ESMTPSA id s8sm10703208wmf.45.2020.02.14.23.24.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 23:24:24 -0800 (PST)
To: jan.pavlinec@nic.cz
From: e9hack <e9hack@gmail.com>
Message-ID: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
Date: Sat, 15 Feb 2020 08:24:23 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_232427_799585_29E41978 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Tor is broken
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

tor doesn't start since commit ca6528f002d74445e3d0a336aeb9074fc337307a:

tor: update init script

Changes:
-add uci config
-create pid file by procd
-add reload function

Feb 15 08:17:20.000 [warn] Unable to open "/var/run/tor.pid" for writing: Permission denied
Feb 15 08:17:20.000 [err] Unable to write PIDFile "/var/run/tor.pid"
Feb 15 08:17:20.000 [err] set_options(): Bug: Acting on config options left us in a broken state. Dying. (on Tor 0.4.2.6 )
Feb 15 08:17:20.000 [err] Reading config failed--see warnings above.

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
