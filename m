Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB17117D05C
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 22:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KYMh7B1XEpq2eKwdxsHgiw0T7KlzuJmkempIO9BGIS4=; b=EB/4+dNBEGGo3V8Vq9OkbsbMbx
	9ZxJoAk4EHeLaij0OP2kTXmK0RFmrLwmnoUxTtrrk738uit4zFQZcH8DDJ73yB6zMtRAHInImLGCy
	xbG6KIXa9HqGG3tsxVwd9ifSeNyrOXFzebih9O2jWI/W3hwRjF4KrbP91jwBTnLeMwZ4tELHOYPqe
	AkzXpeAPBqN1cwTQo5vbA2NlDduH3gCS37T5VsSI9F363fxWHEhqNohsCxPF62VXE+1eYfJ1PZ3n1
	z++E/C8eC6nkKDEb0PYEmc2EKYV9jvBLrYkljHw+jFevIp0IrEF+hMHkvdjJTcy4zmeBHorZrDNEx
	/zmxsNsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAhPZ-0008Nd-KA; Sat, 07 Mar 2020 21:55:09 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAhPK-0008NG-4S
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 21:54:55 +0000
Received: by mail-wr1-x434.google.com with SMTP id t11so6481933wrw.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Mar 2020 13:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=r7JZL4mc4SlLyqcBCX5YCLIxG1nJdUM3dOERGGyaMvA=;
 b=m5umWDj4q1Bww5gaJbDPsysQQFo7v24MVIq4YGqEFJerZBhEmBuII+n1BQUlqaihm+
 dWuEHKn9zmV953uMvOM9cy0r6NOVVBK9B2heXouQWtrk2StSFseo50q9OdLZNSadMJ3M
 tkI+MJ4tIUccPDFvTrY9/wO1oO9OODoZapOy1pizNl9DDJZ9YuK6hzbCCuob8FZahVXc
 Bgn8Lntq0Iy7yd/vgaz1FS+xem1owDgKrX0Yj3JV27qCgR91QiUlhXWzBAARsL+OQkKN
 7+XoL0SRDiOZkD+y4/pz1ZlZccKEQiyDYnxFpo5cS45BoEluwDWh0A3Ywb31LAThAxe3
 2/vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=r7JZL4mc4SlLyqcBCX5YCLIxG1nJdUM3dOERGGyaMvA=;
 b=Rb/ZQN1SM0qNjIQWqiEUx+x3LlU6XhyykqroZyZ4ZkN3I7svZbrmsU0aU9gkOEOYpr
 sV9jsnhRghsnoZleeY5VHZGCePshHwaxwHNKfSF8JROupOKveHzmLEbe4IWiHrAPx+3M
 28ovzjvAG+vSidNWym0mjL85rxGxNAgfT/cJOpA9BGnsphttincqCEenZZ7s0h7Huvdw
 9gE8P/cVhx2bpuIk+asRqtfuJDQYcX0PDs4b9WdwdCDGkQWebdHL7YnopoPUhAZaQO76
 o1bkuntGz7TDeTi9yyr3I0+gF7QL8JZAI1OVrugjb6wESoEm6ufAfN/FKExUHxv/AyMI
 5FJw==
X-Gm-Message-State: ANhLgQ1ziMTub4wHhmLzEyEzir/ECcPdvTYrkb3tFOR3hOCS+BuvdII+
 Na5/oCNOZ0BWuH9+pHKQ5vAPZCgPNn4=
X-Google-Smtp-Source: ADFU+vsq38tiyceX4FJVbjUWMEllGcwHRaIFV27KQiKTkrQS0a9EKJKk+Jqp7Q27DtX6DCTtDIxvxw==
X-Received: by 2002:a5d:6caa:: with SMTP id a10mr3565272wra.342.1583618091300; 
 Sat, 07 Mar 2020 13:54:51 -0800 (PST)
Received: from gatosaldo (net-31-27-176-207.cust.vodafonedsl.it.
 [31.27.176.207])
 by smtp.gmail.com with ESMTPSA id h17sm55762567wro.52.2020.03.07.13.54.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Mar 2020 13:54:50 -0800 (PST)
Date: Sat, 7 Mar 2020 22:54:49 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.382.2003072252270.20704@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_135454_198714_B0992AE8 
X-CRM114-Status: UNSURE (   4.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.7 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] Where may I buy NETGEAR R6700v2/AC2400
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>, mail@adrianschmutzler.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello guys! May I ask for an amazon link where I may buy the ramips-based NETGEAR R6700v2/AC2400 device added in 6e80df5e3344092a391468b1718e412f0dd151c1 ?

I can't see photos and such, so help would be really appreciated. Thanks!!

Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
