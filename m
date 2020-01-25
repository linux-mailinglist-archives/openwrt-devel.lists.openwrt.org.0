Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B538149603
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Jan 2020 15:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YcbEz7n/NCvFXPnVIrw3qC1M7creyBTkSLUuFbSlMv0=; b=AwZLiI1xgbldVV
	viRLU4PJXQLzSKuUfRrn5fzbjkw5pdmARywZXEccTXhIxodv2yJhXD0yKTurOopQGvzEnhun5UOss
	jbRrKPAR9C7rGs3QIp1QBxWrdhsAVRKiahE+PSIV6M5Y3BBa+wFPrvT+aiNwszN9NdHblSgp0H3TD
	0nHqtt5zboUQ5DrUN9JCSOIzXr+KlGMCAoGZiJJlqSMbeJnbZdWTuYZ2zNuq/vo+os372kh8oqsS9
	JCcQsLF5wE6FAcl9UfaWcOR8F6xozZN5p1oya9jm8yYIZ6o5eFIA17WqHIFn+bsPMHtdtwSRY9hNf
	zVFQhRKQYfkM7QWSbedw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivMDU-0007gc-2J; Sat, 25 Jan 2020 14:15:16 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivMDA-0007g0-MP
 for openwrt-devel@lists.openwrt.org; Sat, 25 Jan 2020 14:14:58 +0000
Received: by mail-wm1-x32f.google.com with SMTP id u2so2306067wmc.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Jan 2020 06:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=52+EEKg5UBMQlNpGh16slikaJCRzu+cd+BDjstjjfKw=;
 b=vKM1rdsiPWkRYk+sl2Yac+bNWW0BXxHBqyryKjygv9A18ERrEeT7ck7CkJdTg2HX7Z
 9Ei4uiQtMhlCUqt4I96LSKpIgHfmS0eMp275dDInm+zuh/G42zJdkGl9/GHUnk6bPBS0
 PpNd1OqAXz6lXguy8QJyP8YXgLPeZvYH4z8M/hCoNpR/xGsXrvBoelRAs5n6IuiSvBSu
 YwznjK/7B7kTSo9JfhS8AY0Lb3dPimUTUB3LR4P1XTRov/j+a2IWnWqH6gUbK7tNpT9o
 34cfX9u8LmWa+abJOOS0dzI0KqowlT8h1GV2oOY0wkZZ23vvq2/ZNvul6Cno+gwLM6CA
 9PjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=52+EEKg5UBMQlNpGh16slikaJCRzu+cd+BDjstjjfKw=;
 b=Iyffy3R/XLufg5xqeswyNgyVPSkNwk+1n7r6LUPFD25QkaBFG4LuBBPk+zmv0pfjUn
 51yGyzCwJZLWm/QE3M4Rq6d6regIT1C+OZkf2two1AIjxsr8mqg1Ex64YhYbVpCSBP+H
 kuLyINgRjUQEf3h+18k9W+UVhttOblAKBqae9XNouAHyggV+UOLIMQs0MiMqOR8lcTYq
 k1enXHfO7i+lHo+VQEeC66umiFnOv1bd0CNkUR69v2pEN3+jPd5YT2NSUNKHQmb7U+lV
 P+jxxpNZdNVSpdiNvDVTvzGlIlE4GH837yaiXR8QmEMEwGTZvf8OdFD/udn2VNsxdmuw
 S8Gw==
X-Gm-Message-State: APjAAAXPVi96xFBfCEH+WJRdvNNB+QtykXiuUJX8DQdQOgZP6qPsjOkc
 88pZMU42dEG/hRfJBQMoZHsnT4tk
X-Google-Smtp-Source: APXvYqxRxMqekuE0GCYCRN5OxHWbUmh4Ju788dEK/3rPAEj9jA6YbeA9Q0R1eJf8HWAPpQ1UG44DTQ==
X-Received: by 2002:a1c:a952:: with SMTP id s79mr4777248wme.83.1579961694555; 
 Sat, 25 Jan 2020 06:14:54 -0800 (PST)
Received: from localhost
 (p200300F6671A10ACE86D9000D2A86DC9.dip0.t-ipconnect.de.
 [2003:f6:671a:10ac:e86d:9000:d2a8:6dc9])
 by smtp.gmail.com with ESMTPSA id h8sm13133648wrx.63.2020.01.25.06.14.54
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jan 2020 06:14:54 -0800 (PST)
From: e9hack <e9hack@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <07a06a0d-1cbf-f37b-44db-51227d652af3@gmail.com>
Date: Sat, 25 Jan 2020 15:14:51 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_061457_135012_3D2895CE 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] wifi/wlan isolation
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

Hi,

I face a strange problem. I have configured 9 wlan's. On two, clients can't reach each other. I check the settings of /sys/devices/virtual/net/br-xxx/lower_wlanxyz/brport/hairpin_mode. On my 5GHz wifi, hairpin_mode is set to 1 only for wlan0. For wlan0-1 and wlan0-2 is still at 0. On my 2.4GHz, hairpin_mode is set to 1 on all 6 wlan's. 

How can I solve this?

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
