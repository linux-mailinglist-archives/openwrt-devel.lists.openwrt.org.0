Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2308CFB0B6
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 13:44:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xyv1mZ8bEOtbCBquF7sGh4b43+ebCQ3axFCoLp3FAlA=; b=E3ee+o4gqLrOFO
	bVXUJl9NRaINyaylaVhgzpuSb4wjWCuVYIR3LVgDS2CUhmf9yWONsaQjq3VKjJD9uzSaQ6mn/EPnU
	E/XaVmmrt3D1YpwtR5Atr1SwK/IVpNDsXoFsyM993Pcj3xIcF+1c8ZP0bgD3mVEP4JN2pL/iz0vgo
	czrsSx/6jNJ2TOyBMbzJ4M/MxQTZtqZHCHTTXz9XsGzLr3ceumXBo2aTCoPrcGQdU2rmxi4WFXtKk
	88K6a9fqLjHjs41cJc3ByNr/Z4KeGRpvmrskAAXmq9svsYd+zAGb8k9WHE/MhqFB4uKZv+POspA+l
	ZgVK25KVdBmFgPJsZTIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUs0m-0002Iu-7t; Wed, 13 Nov 2019 12:44:40 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUs0e-0002I6-2t
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 12:44:33 +0000
Received: by mail-wm1-x32b.google.com with SMTP id c22so1860453wmd.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 Nov 2019 04:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=H5TiQAy/ITlyxHC6Vj8ENQ7jEb0Ar0jMKxXlQnDuo00=;
 b=lDOJL590Z2uQXEMySDj9ptB/c+tLcZS7/Ai1D3soOrWeY9ve16+gjTNISSvw7yUnBO
 qZw/p4okbkbRVHS+pH7h0csJI4fD1xd902PtejuL5swG9y4/exDrpawA4DoyM+pjww5E
 uwLc1Bn/XXAxJyCFBbR/NPZrzxbOaeoSPkMZMtvCaViglEHOonh4MFXONndw2Ujv1gLL
 CeyFSFViw+/tUtryohWmlgBQ+LhGyM4iOxD6VYHOqz5OIkkgE8pzxC1nIO4Rfk5vnCO2
 3EcV5s/QKpSSW+qjFOnogJm7C7voNPX3KhIjTMpEmNcquOjgBVjFY1g18ai1xcSOhHtF
 j1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=H5TiQAy/ITlyxHC6Vj8ENQ7jEb0Ar0jMKxXlQnDuo00=;
 b=KfyyNYr73vzwXP0g6D3ad3MN/MQT5i6aIhHzDWNxiu7jUBIak7brRP0E9xdqZOdOVT
 VT7pUYPCRcFgZQZvRjvzBiCybs8xK5nM/8FQsEBCSrppztYx8/E8Xms/G3xMeIls60u1
 UF156PNIBDQ63F0buAuIE6m3zWqFRJsnoUFCJeXcwQzbFoV6hGk9ZmLo0fw/NPBcmBvN
 TGGhnyRRQkK+MJOYmiWBsFXdJU8iIf8boY8sJvLYAaea9ZPFG/ag85S4KhgabyiD1K5n
 6R/qdXEr+beMJe65ZNy7SBM6HHvvSXXv+r1Z463we7h/SwIYuSeH1fXgpQ2A8KSRFjyI
 Z2kw==
X-Gm-Message-State: APjAAAXTaU58789pUBY+2HlSJoHLdjD20srV2TkUSPptvRh+Imtboyqv
 giqp1C25UhL3TaQnilHG8KnmRAIZ
X-Google-Smtp-Source: APXvYqxtcHDfCyDCqZT120fN85cMmzdsGgw9eHhEUGLS6i/huuaAnHo64B3jd+IuygJJfTbJVCui0g==
X-Received: by 2002:a1c:e40b:: with SMTP id b11mr2615053wmh.152.1573649069626; 
 Wed, 13 Nov 2019 04:44:29 -0800 (PST)
Received: from localhost
 (p200300F667094BAC9DF1E54151821991.dip0.t-ipconnect.de.
 [2003:f6:6709:4bac:9df1:e541:5182:1991])
 by smtp.gmail.com with ESMTPSA id 189sm2524214wmc.7.2019.11.13.04.44.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Nov 2019 04:44:29 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
From: e9hack <e9hack@gmail.com>
Message-ID: <a1c02db1-b5ae-dc9f-a3ac-aba2e1df9b01@gmail.com>
Date: Wed, 13 Nov 2019 13:44:25 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_044432_127641_2DA7CEC7 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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

it looks like that uhttpd/luci/rpcd is broken again. After login in the web interface, the main status page times out and shows this error message:

RPCError: RPC call to luci.ddns/get_services_status failed with error -32000: Object not found 
  at handleCallReply (https://wlan-dsl8.lan/luci-static/resources/rpc.js?v=git-19.317.29469-8da8f38:12:3)

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
