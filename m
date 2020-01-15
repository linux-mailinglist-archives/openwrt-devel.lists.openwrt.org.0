Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD57013CC96
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 19:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XI0DQez3dFc5tO+j2UJp+PCDNYvp9s6uxcGy7CnELnA=; b=JvSTCrZQstWIOr9SKlua/yOQt
	gQXSBNA1Qn1HzqWMTiwAsnWjQYRn1Qjr0WnnPerO18m4+3TB6c46Qj6otFUOVYrK+Y2dlpAnC8ud/
	cheTxmuGYOSogWIP5boXCxegVXN1tD+Nj1Nnx+EphmOVAVlbdwUgIsipaZTB5hnKqKkxxU/t8MGpP
	ni8bqD5/KrttxkKc3i4Mj3yZvOClWuN7CLDrLdEz/FHPkEmDb4Qh98dJUFuZWskYr/DUXPUlvoqdt
	SeHMLBZttOvMlWPlSW7EvjqFOxy/jL8mfgMR8tdTnrS2/21PYYpmc6U+kuwThya1EEOHdiEcUe0nq
	k1VH48blQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnmI-0008MP-0w; Wed, 15 Jan 2020 18:52:30 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnm9-0008Kx-96
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 18:52:25 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irnm5-0005ao-KZ; Wed, 15 Jan 2020 19:52:17 +0100
To: Dainis Jonitis <jonitis@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20200110142726.25148-1-dainis.jonitis@ubnt.com>
From: John Crispin <john@phrozen.org>
Message-ID: <a9ffdc8f-94fe-176c-daef-b57c87e4be17@phrozen.org>
Date: Wed, 15 Jan 2020 19:52:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200110142726.25148-1-dainis.jonitis@ubnt.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_105221_478412_1AD19B1B 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] iwinfo: 64-bit byte counters for
 assoclist
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 10/01/2020 15:27, Dainis Jonitis wrote:
> When available, use 64-bit byte counters rx/tx_bytes64. New 32-bit
> counters rx/tx_bytes32 are guaranteed to clamp to max 32-bit value
> and never wrap around. For compatibility with legacy clients the old
> values rx/tx_bytes are just aliases of new rx/tx_bytes32.
> 
> Signed-off-by: Dainis Jonitis <dainis.jonitis@ubnt.com>
Merged, Thanks !

> ---
>   include/iwinfo.h | 12 ++++++++++--
>   iwinfo_nl80211.c | 24 ++++++++++++++++++++----
>   2 files changed, 30 insertions(+), 6 deletions(-)
> 
> diff --git a/include/iwinfo.h b/include/iwinfo.h
> index 5e64294..8610fcb 100644
> --- a/include/iwinfo.h
> +++ b/include/iwinfo.h
> @@ -119,8 +119,16 @@ struct iwinfo_assoclist_entry {
>   	uint64_t rx_drop_misc;
>   	struct iwinfo_rate_entry rx_rate;
>   	struct iwinfo_rate_entry tx_rate;
> -	uint32_t rx_bytes;
> -	uint32_t tx_bytes;
> +	uint64_t rx_bytes64;
> +	uint64_t tx_bytes64;
> +	union {
> +		uint32_t rx_bytes32;    /* clamped to max uint32_t */
> +		uint32_t rx_bytes;      /* OBSOLETED: alias for legacy clients*/
> +	};
> +	union {
> +		uint32_t tx_bytes32;    /* clamped to max uint32_t */
> +		uint32_t tx_bytes;      /* OBSOLETED: alias for legacy clients*/
> +	};
>   	uint32_t tx_retries;
>   	uint32_t tx_failed;
>   	uint64_t t_offset;
> diff --git a/iwinfo_nl80211.c b/iwinfo_nl80211.c
> index 2b2a043..6b35888 100644
> --- a/iwinfo_nl80211.c
> +++ b/iwinfo_nl80211.c
> @@ -1953,6 +1953,8 @@ static int nl80211_get_assoclist_cb(struct nl_msg *msg, void *arg)
>   		[NL80211_STA_INFO_SIGNAL_AVG]    = { .type = NLA_U8     },
>   		[NL80211_STA_INFO_RX_BYTES]      = { .type = NLA_U32    },
>   		[NL80211_STA_INFO_TX_BYTES]      = { .type = NLA_U32    },
> +		[NL80211_STA_INFO_RX_BYTES64]    = { .type = NLA_U64    },
> +		[NL80211_STA_INFO_TX_BYTES64]    = { .type = NLA_U64    },
>   		[NL80211_STA_INFO_TX_RETRIES]    = { .type = NLA_U32    },
>   		[NL80211_STA_INFO_TX_FAILED]     = { .type = NLA_U32    },
>   		[NL80211_STA_INFO_CONNECTED_TIME]= { .type = NLA_U32    },
> @@ -2016,11 +2018,25 @@ static int nl80211_get_assoclist_cb(struct nl_msg *msg, void *arg)
>   		                      sinfo[NL80211_STA_INFO_TX_BITRATE], rate_policy))
>   			nl80211_parse_rateinfo(rinfo, &e->tx_rate);
>   
> -		if (sinfo[NL80211_STA_INFO_RX_BYTES])
> -			e->rx_bytes = nla_get_u32(sinfo[NL80211_STA_INFO_RX_BYTES]);
> +		if (sinfo[NL80211_STA_INFO_RX_BYTES64]) {
> +			uint64_t u64 = nla_get_u64(sinfo[NL80211_STA_INFO_RX_BYTES64]);
> +			e->rx_bytes64 = u64;
> +			e->rx_bytes32 = (u64 <= UINT32_MAX) ? (uint32_t)u64 : UINT32_MAX;
> +		} else if (sinfo[NL80211_STA_INFO_RX_BYTES]) {
> +			uint32_t u32 = nla_get_u32(sinfo[NL80211_STA_INFO_RX_BYTES]);
> +			e->rx_bytes32 = u32;
> +			e->rx_bytes64 = u32;
> +		}
>   
> -		if (sinfo[NL80211_STA_INFO_TX_BYTES])
> -			e->tx_bytes = nla_get_u32(sinfo[NL80211_STA_INFO_TX_BYTES]);
> +		if (sinfo[NL80211_STA_INFO_TX_BYTES64]) {
> +			uint64_t u64 = nla_get_u64(sinfo[NL80211_STA_INFO_TX_BYTES64]);
> +			e->tx_bytes64 = u64;
> +			e->tx_bytes32 = (u64 <= UINT32_MAX) ? (uint32_t)u64 : UINT32_MAX;
> +		} else if (sinfo[NL80211_STA_INFO_TX_BYTES]) {
> +			uint32_t u32 = nla_get_u32(sinfo[NL80211_STA_INFO_TX_BYTES]);
> +			e->tx_bytes32 = u32;
> +			e->tx_bytes64 = u32;
> +		}
>   
>   		if (sinfo[NL80211_STA_INFO_TX_RETRIES])
>   			e->tx_retries = nla_get_u32(sinfo[NL80211_STA_INFO_TX_RETRIES]);
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
